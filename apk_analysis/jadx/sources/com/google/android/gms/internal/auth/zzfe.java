package com.google.android.gms.internal.auth;

import defpackage.dob;
import defpackage.mi2;
import defpackage.unb;
import defpackage.w6b;
import defpackage.znb;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfe extends w6b implements RandomAccess, zzff {

    @Deprecated
    public static final zzff zza = new zzfe((Object) null);
    public final List c;

    public zzfe(int i) {
        ArrayList arrayList = new ArrayList(i);
        super(true);
        this.c = arrayList;
    }

    @Override // defpackage.w6b, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        a();
        this.c.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.w6b, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        a();
        if (collection instanceof zzff) {
            collection = ((zzff) collection).zzg();
        }
        boolean zAddAll = this.c.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // defpackage.w6b, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        a();
        this.c.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.w6b, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        a();
        Object objRemove = this.c.remove(i);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        return objRemove instanceof zzef ? ((zzef) objRemove).zzl(zzfa.a) : zzfa.zzd((byte[]) objRemove);
    }

    @Override // defpackage.w6b, java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        a();
        Object obj2 = this.c.set(i, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        return obj2 instanceof zzef ? ((zzef) obj2).zzl(zzfa.a) : zzfa.zzd((byte[]) obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.c.size();
    }

    @Override // com.google.android.gms.internal.auth.zzez
    public final /* bridge */ /* synthetic */ zzez zzd(int i) {
        if (i < size()) {
            mi2.b();
            return null;
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.c);
        return new zzfe(arrayList);
    }

    @Override // com.google.android.gms.internal.auth.zzff
    public final zzff zze() {
        return zzc() ? new zzhe(this) : this;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public final String get(int i) {
        List list = this.c;
        Object obj = list.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzef) {
            zzef zzefVar = (zzef) obj;
            String strZzl = zzefVar.zzl(zzfa.a);
            if (zzefVar.zzh()) {
                list.set(i, strZzl);
            }
            return strZzl;
        }
        byte[] bArr = (byte[]) obj;
        String strZzd = zzfa.zzd(bArr);
        znb znbVar = dob.a;
        int length = bArr.length;
        znbVar.getClass();
        if (unb.a(bArr, 0, length)) {
            list.set(i, strZzd);
        }
        return strZzd;
    }

    @Override // com.google.android.gms.internal.auth.zzff
    public final List zzg() {
        return Collections.unmodifiableList(this.c);
    }

    public zzfe() {
        this(10);
    }

    public zzfe(ArrayList arrayList) {
        super(true);
        this.c = arrayList;
    }

    public zzfe(Object obj) {
        super(false);
        this.c = Collections.EMPTY_LIST;
    }

    @Override // defpackage.w6b, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
