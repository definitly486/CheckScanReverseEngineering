package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.lgb;
import defpackage.u6b;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzds {
    public static final zzds b = new zzds(0);
    public static final /* synthetic */ int zzb = 0;
    public final Map a;

    public zzds() {
        this.a = new HashMap();
    }

    public static zzds zza() {
        lgb lgbVar = lgb.c;
        return b;
    }

    public final zzef zzb(zzfm zzfmVar, int i) {
        return (zzef) this.a.get(new u6b(i, zzfmVar));
    }

    public zzds(int i) {
        this.a = Collections.EMPTY_MAP;
    }
}
