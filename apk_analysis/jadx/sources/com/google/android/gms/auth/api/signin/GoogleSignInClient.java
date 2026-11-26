package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.internal.zbm;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.Task;
import defpackage.mma;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class GoogleSignInClient extends GoogleApi<GoogleSignInOptions> {
    public static final mma a = new mma();
    public static int b = 1;

    public GoogleSignInClient(Activity activity, GoogleSignInOptions googleSignInOptions) {
        super(activity, Auth.GOOGLE_SIGN_IN_API, googleSignInOptions, (StatusExceptionMapper) new ApiExceptionMapper());
    }

    public final synchronized int a() {
        int i;
        try {
            i = b;
            if (i == 1) {
                Context applicationContext = getApplicationContext();
                GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
                int iIsGooglePlayServicesAvailable = googleApiAvailability.isGooglePlayServicesAvailable(applicationContext, 12451000);
                if (iIsGooglePlayServicesAvailable == 0) {
                    i = 4;
                    b = 4;
                } else if (googleApiAvailability.getErrorResolutionIntent(applicationContext, iIsGooglePlayServicesAvailable, null) != null || DynamiteModule.getLocalVersion(applicationContext, "com.google.android.gms.auth.api.fallback") == 0) {
                    i = 2;
                    b = 2;
                } else {
                    i = 3;
                    b = 3;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return i;
    }

    public Intent getSignInIntent() {
        Context applicationContext = getApplicationContext();
        int iA = a();
        int i = iA - 1;
        if (iA == 0) {
            throw null;
        }
        if (i != 2) {
            return i != 3 ? zbm.zbc(applicationContext, getApiOptions()) : zbm.zba(applicationContext, getApiOptions());
        }
        return zbm.zbb(applicationContext, getApiOptions());
    }

    public Task<Void> revokeAccess() {
        return PendingResultUtil.toVoidTask(zbm.zbf(asGoogleApiClient(), getApplicationContext(), a() == 3));
    }

    public Task<Void> signOut() {
        return PendingResultUtil.toVoidTask(zbm.zbe(asGoogleApiClient(), getApplicationContext(), a() == 3));
    }

    public Task<GoogleSignInAccount> silentSignIn() {
        return PendingResultUtil.toTask(zbm.zbd(asGoogleApiClient(), getApplicationContext(), getApiOptions(), a() == 3), a);
    }
}
