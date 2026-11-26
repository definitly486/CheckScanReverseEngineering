package com.google.android.gms.signin;

import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import defpackage.oja;
import defpackage.ria;

/* JADX INFO: loaded from: classes4.dex */
public final class zad {
    public static final Api.ClientKey zaa;
    public static final Api.ClientKey zab;
    public static final Api.AbstractClientBuilder zac;
    public static final Scope zae;
    public static final Scope zaf;
    public static final Api zag;
    public static final Api zah;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zaa = clientKey;
        Api.ClientKey clientKey2 = new Api.ClientKey();
        zab = clientKey2;
        ria riaVar = new ria();
        zac = riaVar;
        oja ojaVar = new oja();
        zae = new Scope(Scopes.PROFILE);
        zaf = new Scope("email");
        zag = new Api("SignIn.API", riaVar, clientKey);
        zah = new Api("SignIn.INTERNAL_API", ojaVar, clientKey2);
    }
}
