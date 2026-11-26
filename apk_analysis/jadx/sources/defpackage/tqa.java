package defpackage;

import android.accounts.Account;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth.zzal;

/* JADX INFO: loaded from: classes4.dex */
public final class tqa extends mta {
    public final /* synthetic */ lra a;

    public tqa(lra lraVar) {
        this.a = lraVar;
    }

    @Override // defpackage.mta, com.google.android.gms.auth.account.zzb
    public final void zzb(Account account) {
        this.a.setResult(new qta(account != null ? Status.RESULT_SUCCESS : zzal.a, account));
    }
}
