package sboot.healing.security.oauth2;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

@Controller
public class OAuthRedirectController {
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/code")
	@ResponseBody
	public String redirect(@RequestParam String code) {
		RestTemplate rt = new RestTemplate();
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "application/x-www-form-urlencoded");
		
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		params.add("client_id", "414804857670-0geph95alpe2i9h4fia9leroqmrla70j.apps.googleusercontent.com");
		params.add("client_secret", "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");
		params.add("code", code);
		params.add("grant_type", "authorization_code");
		params.add("redirect_uri", "http://localhost:8888/code");
		
		HttpEntity<MultiValueMap<String, String>> accessTokenRequest = new HttpEntity<>(params, headers);
		
		ResponseEntity<String> accessTokenResponse = rt.exchange(
				"https://oauth2.googleapis.com/token", HttpMethod.POST, accessTokenRequest, String.class
				);
		return "response : " + accessTokenResponse.getBody();
	}
}
