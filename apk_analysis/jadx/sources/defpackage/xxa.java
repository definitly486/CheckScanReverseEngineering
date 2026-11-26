package defpackage;

import com.google.android.gms.auth.api.AuthProxy;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.common.api.GoogleApiClient;

/* JADX INFO: loaded from: classes4.dex */
public final class xxa extends gxa {
    public final /* synthetic */ ProxyRequest r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xxa(GoogleApiClient googleApiClient, ProxyRequest proxyRequest) {
        super(AuthProxy.API, googleApiClient);
        this.r = proxyRequest;
    }
}
