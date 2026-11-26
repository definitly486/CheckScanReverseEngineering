package com.google.android.gms.internal.mlkit_vision_barcode;

import defpackage.q1b;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzcv extends zzcn implements Set {
    public transient zzcs c;

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return zzds.b(this, obj);
    }

    public zzcs g() {
        Object[] array = toArray();
        q1b q1bVar = zzcs.c;
        int length = array.length;
        return length == 0 ? a.f : new a(array, length);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return zzds.a(this);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcn, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: zzd */
    public abstract zzdu iterator();

    public final zzcs zzf() {
        zzcs zzcsVar = this.c;
        if (zzcsVar != null) {
            return zzcsVar;
        }
        zzcs zzcsVarG = g();
        this.c = zzcsVarG;
        return zzcsVarG;
    }
}
