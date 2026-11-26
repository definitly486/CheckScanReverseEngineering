package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class GoogleSignInResult implements Result {
    public final Status b;
    public final GoogleSignInAccount c;

    public GoogleSignInResult(GoogleSignInAccount googleSignInAccount, Status status) {
        this.c = googleSignInAccount;
        this.b = status;
    }

    public GoogleSignInAccount getSignInAccount() {
        return this.c;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.b;
    }

    public boolean isSuccess() {
        return this.b.isSuccess();
    }
}
