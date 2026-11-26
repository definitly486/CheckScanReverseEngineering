package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzav {
    public final ArrayList a = new ArrayList();

    public final void a(String str) {
        if (!this.a.contains(zzh.zze(str))) {
            throw new IllegalArgumentException("Command not supported");
        }
        throw new UnsupportedOperationException("Command not implemented: ".concat(String.valueOf(str)));
    }

    public abstract zzao zza(String str, zzg zzgVar, List list);
}
