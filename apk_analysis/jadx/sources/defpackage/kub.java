package defpackage;

import com.google.android.gms.auth.api.accounttransfer.AccountTransferClient;
import com.google.android.gms.auth.api.accounttransfer.AccountTransferException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth.zzan;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public class kub extends zzan {
    public final n1c a;

    public kub(n1c n1cVar) {
        this.a = n1cVar;
    }

    @Override // com.google.android.gms.internal.auth.zzan, com.google.android.gms.internal.auth.zzat
    public final void zzd(Status status) {
        TaskCompletionSource taskCompletionSource = this.a.a;
        Api api = AccountTransferClient.a;
        taskCompletionSource.setException(new AccountTransferException(status));
    }
}
