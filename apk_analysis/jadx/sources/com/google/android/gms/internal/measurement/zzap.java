package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzap implements zzao {
    public final String b;
    public final ArrayList c;

    public zzap(String str, List list) {
        this.b = str;
        ArrayList arrayList = new ArrayList();
        this.c = arrayList;
        arrayList.addAll(list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzap)) {
            return false;
        }
        zzap zzapVar = (zzap) obj;
        String str = zzapVar.b;
        String str2 = this.b;
        if (str2 == null ? str == null : str2.equals(str)) {
            return this.c.equals(zzapVar.c);
        }
        return false;
    }

    public final int hashCode() {
        String str = this.b;
        return this.c.hashCode() + ((str != null ? str.hashCode() : 0) * 31);
    }

    public final String zzb() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String zzc() {
        throw new IllegalStateException("Statement cannot be cast as String");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao zzcG(String str, zzg zzgVar, List list) {
        throw new IllegalStateException("Statement is not an evaluated entity");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double zzd() {
        throw new IllegalStateException("Statement cannot be cast as Double");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean zze() {
        throw new IllegalStateException("Statement cannot be cast as Boolean");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator zzf() {
        return null;
    }

    public final ArrayList zzg() {
        return this.c;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao zzt() {
        return this;
    }
}
