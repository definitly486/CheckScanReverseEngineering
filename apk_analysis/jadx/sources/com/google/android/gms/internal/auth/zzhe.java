package com.google.android.gms.internal.auth;

import defpackage.rmb;
import defpackage.vmb;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class zzhe extends AbstractList implements RandomAccess, zzff {
    public final zzff b;

    public zzhe(zzff zzffVar) {
        this.b = zzffVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return ((zzfe) this.b).get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new vmb(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new rmb(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.b.size();
    }

    @Override // com.google.android.gms.internal.auth.zzff
    public final zzff zze() {
        return this;
    }

    @Override // com.google.android.gms.internal.auth.zzff
    public final List zzg() {
        return this.b.zzg();
    }
}
