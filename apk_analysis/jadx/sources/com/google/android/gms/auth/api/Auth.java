package com.google.android.gms.auth.api;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Api;
import defpackage.dna;
import defpackage.nma;

/* JADX INFO: loaded from: classes4.dex */
public final class Auth {
    public static final Api<GoogleSignInOptions> GOOGLE_SIGN_IN_API;
    public static final GoogleSignInApi GoogleSignInApi;

    @Deprecated
    public static final Api<AuthProxyOptions> PROXY_API;

    @Deprecated
    public static final ProxyApi ProxyApi;
    public static final Api.ClientKey zba;
    public static final Api.ClientKey zbb;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zba = clientKey;
        Api.ClientKey clientKey2 = new Api.ClientKey();
        zbb = clientKey2;
        nma nmaVar = new nma();
        dna dnaVar = new dna();
        PROXY_API = AuthProxy.API;
        new Api("Auth.CREDENTIALS_API", nmaVar, clientKey);
        GOOGLE_SIGN_IN_API = new Api<>("Auth.GOOGLE_SIGN_IN_API", dnaVar, clientKey2);
        ProxyApi = AuthProxy.ProxyApi;
        GoogleSignInApi = new com.google.android.gms.auth.api.signin.internal.zbd();
    }
}
