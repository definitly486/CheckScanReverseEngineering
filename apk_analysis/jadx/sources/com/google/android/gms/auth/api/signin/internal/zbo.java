package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zbo extends com.google.android.gms.internal.p000authapi.zbb implements zbp {
    public zbo() {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
    }

    @Override // com.google.android.gms.internal.p000authapi.zbb
    public final boolean f(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            zbb();
            return true;
        }
        if (i != 2) {
            return false;
        }
        zbc();
        return true;
    }
}
