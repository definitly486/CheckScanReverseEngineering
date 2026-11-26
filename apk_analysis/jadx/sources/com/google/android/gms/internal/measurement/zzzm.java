package com.google.android.gms.internal.measurement;

import defpackage.qic;
import defpackage.ric;
import defpackage.sic;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzzm {
    public static final qic d = new qic();
    public static final ric e = new ric();
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public zzzo c = null;

    public final zzzm zza(zzzo zzzoVar) {
        this.c = zzzoVar;
        return this;
    }

    public final zzzq zzc() {
        return new sic(this);
    }
}
