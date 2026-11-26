package com.google.android.gms.auth.api;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class zbc {
    public final Boolean a;
    public String b;

    public zbc(zbd zbdVar) {
        this.a = Boolean.FALSE;
        this.a = Boolean.valueOf(zbdVar.b);
        this.b = zbdVar.c;
    }

    public final zbc zba(String str) {
        this.b = str;
        return this;
    }

    public zbc() {
        this.a = Boolean.FALSE;
    }
}
