package com.google.android.gms.internal.mlkit_vision_common;

import defpackage.t6c;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzs extends zzl implements Set {
    public transient zzp c;

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this || obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                return size() == set.size() && containsAll(set);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public zzp g() {
        Object[] array = toArray();
        t6c t6cVar = zzp.c;
        int length = array.length;
        return length == 0 ? b.f : new b(array, length);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: zzd */
    public abstract zzab iterator();

    public final zzp zzf() {
        zzp zzpVar = this.c;
        if (zzpVar != null) {
            return zzpVar;
        }
        zzp zzpVarG = g();
        this.c = zzpVarG;
        return zzpVarG;
    }
}
