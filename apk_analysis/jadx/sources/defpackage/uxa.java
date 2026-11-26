package defpackage;

import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.internal.auth.zzbd;

/* JADX INFO: loaded from: classes4.dex */
public final class uxa extends zzbd {
    public final /* synthetic */ xxa a;

    public uxa(xxa xxaVar) {
        this.a = xxaVar;
    }

    @Override // com.google.android.gms.internal.auth.zzbd, com.google.android.gms.internal.auth.zzbg
    public final void zzb(ProxyResponse proxyResponse) {
        this.a.setResult(new iya(proxyResponse));
    }
}
