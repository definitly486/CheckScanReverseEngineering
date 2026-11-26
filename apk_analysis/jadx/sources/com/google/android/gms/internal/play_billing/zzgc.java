package com.google.android.gms.internal.play_billing;

import defpackage.yhb;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgc {
    public static final zzgc b = new zzgc(0);
    public static final /* synthetic */ int zzb = 0;
    public final Map a;

    public zzgc() {
        this.a = new HashMap();
    }

    public final zzgo zza(zzhr zzhrVar, int i) {
        return (zzgo) this.a.get(new yhb(i, zzhrVar));
    }

    public zzgc(int i) {
        this.a = Collections.EMPTY_MAP;
    }
}
