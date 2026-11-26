package defpackage;

import com.google.android.gms.auth.api.accounttransfer.AccountTransferException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth.zzan;

/* JADX INFO: loaded from: classes4.dex */
public final class f4c extends zzan {
    public final /* synthetic */ n6c a;

    public f4c(n6c n6cVar) {
        this.a = n6cVar;
    }

    @Override // com.google.android.gms.internal.auth.zzan, com.google.android.gms.internal.auth.zzat
    public final void zzd(Status status) {
        this.a.a.setException(new AccountTransferException(status));
    }

    @Override // com.google.android.gms.internal.auth.zzan, com.google.android.gms.internal.auth.zzat
    public final void zze() {
        this.a.a.setResult(null);
    }
}
