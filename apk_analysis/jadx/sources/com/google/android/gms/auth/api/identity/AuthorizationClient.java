package com.google.android.gms.auth.api.identity;

import android.content.Intent;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public interface AuthorizationClient extends HasApiKey<zba> {
    Task<AuthorizationResult> authorize(AuthorizationRequest authorizationRequest);

    Task<Void> clearToken(ClearTokenRequest clearTokenRequest);

    AuthorizationResult getAuthorizationResultFromIntent(Intent intent);

    Task<Void> revokeAccess(RevokeAccessRequest revokeAccessRequest);
}
