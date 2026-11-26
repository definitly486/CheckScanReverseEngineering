package com.google.android.gms.common.api.internal;

import android.os.UserHandle;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ApiKey<O extends Api.ApiOptions> {
    public final int a;
    public final Api b;
    public final Api.ApiOptions c;
    public final String d;
    public final UserHandle e;

    public ApiKey(Api api, Api.ApiOptions apiOptions, String str, UserHandle userHandle) {
        this.b = api;
        this.c = apiOptions;
        this.d = str;
        this.e = userHandle;
        this.a = Objects.hashCode(api, apiOptions, str, userHandle);
    }

    public static <O extends Api.ApiOptions> ApiKey<O> getSharedApiKey(Api<O> api, O o, String str) {
        return getSharedApiKey(api, o, str, null);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApiKey)) {
            return false;
        }
        ApiKey apiKey = (ApiKey) obj;
        return Objects.equal(this.b, apiKey.b) && Objects.equal(this.c, apiKey.c) && Objects.equal(this.d, apiKey.d) && Objects.equal(this.e, apiKey.e);
    }

    public final int hashCode() {
        return this.a;
    }

    public final String zaa() {
        return this.b.zad();
    }

    public static <O extends Api.ApiOptions> ApiKey<O> getSharedApiKey(Api<O> api, O o, String str, UserHandle userHandle) {
        return new ApiKey<>(api, o, str, userHandle);
    }
}
