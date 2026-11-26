package defpackage;

import android.accounts.Account;
import com.google.android.gms.auth.account.WorkAccountApi;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
public final class qta implements WorkAccountApi.AddAccountResult {
    public static final Account d = new Account("DUMMY_NAME", "com.google");
    public final Status b;
    public final Account c;

    public qta(Status status, Account account) {
        this.b = status;
        this.c = account == null ? d : account;
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi.AddAccountResult
    public final Account getAccount() {
        return this.c;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.b;
    }
}
