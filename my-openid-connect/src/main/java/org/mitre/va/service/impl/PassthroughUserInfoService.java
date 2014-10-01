package org.mitre.va.service.impl;

import org.mitre.openid.connect.model.DefaultUserInfo;
import org.mitre.openid.connect.model.OIDCAuthenticationToken;
import org.mitre.openid.connect.model.UserInfo;
import org.mitre.openid.connect.service.UserInfoService;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

public class PassthroughUserInfoService implements UserInfoService {

	@Override
	public UserInfo getBySubject(String arg0) {
		// not implemented
		return null;
	}

	@Override
	public UserInfo getByUsername(String username) {

		// get security principal
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth instanceof OIDCAuthenticationToken) {
			OIDCAuthenticationToken oidc = (OIDCAuthenticationToken)auth;
			if (oidc.getName().equals(username)) {
				return oidc.getUserInfo();
			} else {
				return new DefaultUserInfo();
			}
		} else {
			return new DefaultUserInfo();
		}
	}

	@Override
	public UserInfo getByUsernameAndClientId(String arg0, String arg1) {
		// passthrough
		return getByUsername(arg0);
	}

	@Override
	public void remove(UserInfo arg0) {
		// not implemented
	}

	@Override
	public void save(UserInfo arg0) {
		// not implemented
	}

}
