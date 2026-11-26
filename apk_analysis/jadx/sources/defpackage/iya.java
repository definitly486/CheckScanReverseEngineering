package defpackage;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
public final class iya implements ProxyApi.ProxyResult {
    public final Status b;
    public final ProxyResponse c;

    public iya(ProxyResponse proxyResponse) {
        this.c = proxyResponse;
        this.b = Status.RESULT_SUCCESS;
    }

    @Override // com.google.android.gms.auth.api.proxy.ProxyApi.ProxyResult
    public final ProxyResponse getResponse() {
        return this.c;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.b;
    }

    public iya(Status status) {
        this.b = status;
    }
}
