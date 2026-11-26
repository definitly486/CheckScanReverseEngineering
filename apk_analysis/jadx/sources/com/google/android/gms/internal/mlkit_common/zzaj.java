package com.google.android.gms.internal.mlkit_common;

import defpackage.xqa;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaj extends zzab implements Set {
    public transient zzaf c;

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

    public zzaf g() {
        Object[] array = toArray();
        xqa xqaVar = zzaf.c;
        int length = array.length;
        return length == 0 ? a.f : new a(array, length);
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

    @Override // com.google.android.gms.internal.mlkit_common.zzab, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: zzd */
    public abstract zzas iterator();

    public final zzaf zzf() {
        zzaf zzafVar = this.c;
        if (zzafVar != null) {
            return zzafVar;
        }
        zzaf zzafVarG = g();
        this.c = zzafVarG;
        return zzafVarG;
    }
}
