package com.google.android.gms.common;

import android.content.Intent;

/* JADX INFO: loaded from: classes4.dex */
public class GooglePlayServicesRepairableException extends UserRecoverableException {
    public final int c;

    public GooglePlayServicesRepairableException(int i, String str, Intent intent) {
        super(str, intent);
        this.c = i;
    }

    public int getConnectionStatusCode() {
        return this.c;
    }
}
