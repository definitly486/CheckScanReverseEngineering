package com.google.android.gms.internal.fido;

import defpackage.xua;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class b extends zzau {
    public static final Object[] i;
    public static final b j;
    public final transient Object[] d;
    public final transient int e;
    public final transient Object[] f;
    public final transient int g;
    public final transient int h;

    static {
        Object[] objArr = new Object[0];
        i = objArr;
        j = new b(objArr, 0, objArr, 0, 0);
    }

    public b(Object[] objArr, int i2, Object[] objArr2, int i3, int i4) {
        this.d = objArr;
        this.e = i2;
        this.f = objArr2;
        this.g = i3;
        this.h = i4;
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    public final void a(Object[] objArr) {
        System.arraycopy(this.d, 0, objArr, 0, this.h);
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    public final int b() {
        return this.h;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        Object[] objArr = this.f;
        if (objArr.length == 0) {
            return false;
        }
        int iRotateLeft = (int) (((long) Integer.rotateLeft((int) (((long) obj.hashCode()) * (-862048943)), 15)) * 461845907);
        while (true) {
            int i2 = iRotateLeft & this.g;
            Object obj2 = objArr[i2];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iRotateLeft = i2 + 1;
        }
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    public final int d() {
        return 0;
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    public final Object[] f() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.fido.zzau
    public final a g() {
        xua xuaVar = zzat.c;
        int i2 = this.h;
        return i2 == 0 ? a.f : new a(this.d, i2);
    }

    @Override // com.google.android.gms.internal.fido.zzau, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.fido.zzau, com.google.android.gms.internal.fido.zzaq, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return zzg().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.fido.zzau, com.google.android.gms.internal.fido.zzaq
    /* JADX INFO: renamed from: zzd */
    public final zzaz iterator() {
        return zzg().listIterator(0);
    }
}
