package com.google.android.gms.common.internal.service;

import com.google.android.gms.common.api.Api;
import defpackage.fka;

/* JADX INFO: loaded from: classes4.dex */
public final class Common {
    public static final Api<Api.ApiOptions.NoOptions> API;
    public static final Api.ClientKey<zai> CLIENT_KEY;
    public static final zaf zaa;

    static {
        Api.ClientKey<zai> clientKey = new Api.ClientKey<>();
        CLIENT_KEY = clientKey;
        API = new Api<>("Common.API", new fka(), clientKey);
        zaa = new zaf();
    }
}
