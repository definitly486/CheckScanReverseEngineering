package com.google.android.gms.common;

import android.content.Intent;

/* JADX INFO: loaded from: classes4.dex */
public class UserRecoverableException extends Exception {
    public final Intent b;

    public UserRecoverableException(String str, Intent intent) {
        super(str);
        this.b = intent;
    }

    public Intent getIntent() {
        return new Intent(this.b);
    }
}
