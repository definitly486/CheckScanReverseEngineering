package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpo {
    public final AtomicReferenceArray a;
    public final zzog b;

    public zzpo(zzog zzogVar, int i) {
        this.b = zzogVar;
        this.a = new AtomicReferenceArray(i);
    }

    public final zzom zza(int i, String str, boolean z) {
        AtomicReferenceArray atomicReferenceArray = this.a;
        zzom zzomVar = (zzom) atomicReferenceArray.get(i);
        if (zzomVar != null) {
            return zzomVar;
        }
        zzom zzomVarZza = this.b.zza(str, z);
        while (!atomicReferenceArray.compareAndSet(i, null, zzomVarZza)) {
            if (atomicReferenceArray.get(i) != null) {
                zzom zzomVar2 = (zzom) atomicReferenceArray.get(i);
                zzomVar2.getClass();
                return zzomVar2;
            }
        }
        return zzomVarZza;
    }

    public final zzom zzb(int i, String str, long j) {
        AtomicReferenceArray atomicReferenceArray = this.a;
        zzom zzomVar = (zzom) atomicReferenceArray.get(i);
        if (zzomVar != null) {
            return zzomVar;
        }
        zzom zzomVarZzb = this.b.zzb(str, j);
        while (!atomicReferenceArray.compareAndSet(i, null, zzomVarZzb)) {
            if (atomicReferenceArray.get(i) != null) {
                zzom zzomVar2 = (zzom) atomicReferenceArray.get(i);
                zzomVar2.getClass();
                return zzomVar2;
            }
        }
        return zzomVarZzb;
    }

    public final zzom zzc(int i, String str, double d) {
        AtomicReferenceArray atomicReferenceArray = this.a;
        zzom zzomVar = (zzom) atomicReferenceArray.get(2);
        if (zzomVar != null) {
            return zzomVar;
        }
        zzom zzomVarZzc = this.b.zzc("measurement.test.double_flag", -3.0d);
        while (!atomicReferenceArray.compareAndSet(2, null, zzomVarZzc)) {
            if (atomicReferenceArray.get(2) != null) {
                zzom zzomVar2 = (zzom) atomicReferenceArray.get(2);
                zzomVar2.getClass();
                return zzomVar2;
            }
        }
        return zzomVarZzc;
    }

    public final zzom zzd(int i, String str, String str2) {
        AtomicReferenceArray atomicReferenceArray = this.a;
        zzom zzomVar = (zzom) atomicReferenceArray.get(i);
        if (zzomVar != null) {
            return zzomVar;
        }
        zzom zzomVarZzd = this.b.zzd(str, str2);
        while (!atomicReferenceArray.compareAndSet(i, null, zzomVarZzd)) {
            if (atomicReferenceArray.get(i) != null) {
                zzom zzomVar2 = (zzom) atomicReferenceArray.get(i);
                zzomVar2.getClass();
                return zzomVar2;
            }
        }
        return zzomVarZzd;
    }
}
