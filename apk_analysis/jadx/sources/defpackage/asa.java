package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth.zzal;

/* JADX INFO: loaded from: classes4.dex */
public final class asa extends mta {
    public final /* synthetic */ zsa a;

    public asa(zsa zsaVar) {
        this.a = zsaVar;
    }

    @Override // defpackage.mta, com.google.android.gms.auth.account.zzb
    public final void zzc(boolean z) {
        this.a.setResult(new aua(z ? Status.RESULT_SUCCESS : zzal.a));
    }
}
