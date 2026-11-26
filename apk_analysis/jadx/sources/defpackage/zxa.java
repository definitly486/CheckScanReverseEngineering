package defpackage;

import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth.zzbd;
import com.google.android.gms.internal.auth.zzbv;

/* JADX INFO: loaded from: classes4.dex */
public final class zxa extends zzbd {
    public final /* synthetic */ bya a;

    public zxa(bya byaVar) {
        this.a = byaVar;
    }

    @Override // com.google.android.gms.internal.auth.zzbd, com.google.android.gms.internal.auth.zzbg
    public final void zzc(String str) {
        bya byaVar = this.a;
        if (str != null) {
            byaVar.setResult(new zzbv(str));
        } else {
            byaVar.setResult(new zzbv(new Status(AuthApiStatusCodes.AUTH_APP_CERT_ERROR)));
        }
    }
}
