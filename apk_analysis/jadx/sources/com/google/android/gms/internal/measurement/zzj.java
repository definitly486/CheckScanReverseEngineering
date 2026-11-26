package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzj {
    public final HashMap a = new HashMap();

    public final void zza(String str, Callable callable) {
        this.a.put(str, callable);
    }
}
