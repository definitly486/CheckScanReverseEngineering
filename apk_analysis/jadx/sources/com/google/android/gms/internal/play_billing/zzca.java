package com.google.android.gms.internal.play_billing;

import com.android.billingclient.api.BillingClient;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.jh;
import defpackage.o2;
import defpackage.qya;
import defpackage.tya;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzca extends zzbx implements List, RandomAccess {
    public static final qya c = new qya(a.f, 0);
    public static final /* synthetic */ int zzd = 0;

    public static a i(int i, Object[] objArr) {
        return i == 0 ? a.f : new a(objArr, i);
    }

    public static zzca zzj(Collection collection) {
        if (collection instanceof zzbx) {
            zzca zzcaVarZzd = ((zzbx) collection).zzd();
            if (!zzcaVarZzd.f()) {
                return zzcaVarZzd;
            }
            Object[] array = zzcaVarZzd.toArray();
            return i(array.length, array);
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        for (int i = 0; i < length; i++) {
            if (array2[i] == null) {
                o2.d(jh.b(i, "at index "));
                return null;
            }
        }
        return i(length, array2);
    }

    public static zzca zzk() {
        return a.f;
    }

    public static zzca zzl(Object obj) {
        Object[] objArr = {obj};
        for (int i = 0; i < 1; i++) {
            if (objArr[i] == null) {
                o2.d(jh.b(i, "at index "));
                return null;
            }
        }
        return i(1, objArr);
    }

    public static zzca zzm(Object obj, Object obj2) {
        Object[] objArr = {BillingClient.ProductType.SUBS, BillingClient.ProductType.INAPP};
        for (int i = 0; i < 2; i++) {
            if (objArr[i] == null) {
                o2.d(jh.b(i, "at index "));
                return null;
            }
        }
        return i(2, objArr);
    }

    @Override // com.google.android.gms.internal.play_billing.zzbx
    public int a(Object[] objArr) {
        int size = size();
        for (int i = 0; i < size; i++) {
            objArr[i] = get(i);
        }
        return size;
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.play_billing.zzbx, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        if (list instanceof RandomAccess) {
            for (int i = 0; i < size; i++) {
                if (!Objects.equals(get(i), list.get(i))) {
                    return false;
                }
            }
            return true;
        }
        Iterator it = iterator();
        Iterator it2 = list.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext() || !Objects.equals(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i = 0; i < size; i++) {
            iHashCode = (iHashCode * 31) + get(i).hashCode();
        }
        return iHashCode;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbx, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    @Deprecated
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.play_billing.zzbx
    @Deprecated
    public final zzca zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbx
    /* JADX INFO: renamed from: zze */
    public final zzcs iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: zzh */
    public zzca subList(int i, int i2) {
        zzbl.zzd(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        return i3 == 0 ? a.f : new tya(this, i, i3);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: zzn, reason: merged with bridge method [inline-methods] */
    public final zzct listIterator(int i) {
        zzbl.zzb(i, size(), FirebaseAnalytics.Param.INDEX);
        return isEmpty() ? c : new qya(this, i);
    }
}
