package com.google.android.gms.internal.play_billing;

import defpackage.e13;
import defpackage.fg;
import defpackage.jh;
import defpackage.o2;
import defpackage.qya;
import defpackage.t1b;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzcf extends zzbx implements Set {
    public transient zzca c;

    public static int i(int i) {
        int iMax = Math.max(i, 2);
        if (iMax < 751619276) {
            int iHighestOneBit = Integer.highestOneBit(iMax - 1);
            do {
                iHighestOneBit += iHighestOneBit;
            } while (((double) iHighestOneBit) * 0.7d < iMax);
            return iHighestOneBit;
        }
        if (iMax < 1073741824) {
            return 1073741824;
        }
        fg.c("collection too large");
        return 0;
    }

    public static zzcf k(int i, Object... objArr) {
        if (i == 0) {
            return b.j;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new t1b(obj);
        }
        int i2 = i(i);
        Object[] objArr2 = new Object[i2];
        int i3 = i2 - 1;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < i; i6++) {
            Object obj2 = objArr[i6];
            if (obj2 == null) {
                o2.d(jh.b(i6, "at index "));
                return null;
            }
            int iHashCode = obj2.hashCode();
            int iA = e13.a(iHashCode);
            while (true) {
                int i7 = iA & i3;
                Object obj3 = objArr2[i7];
                if (obj3 == null) {
                    objArr[i5] = obj2;
                    objArr2[i7] = obj2;
                    i4 += iHashCode;
                    i5++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iA++;
            }
        }
        Arrays.fill(objArr, i5, i, (Object) null);
        if (i5 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new t1b(obj4);
        }
        if (i(i5) < i2 / 2) {
            return k(i5, objArr);
        }
        int length = objArr.length;
        if (i5 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i5);
        }
        return new b(objArr, i4, objArr2, i3, i5);
    }

    public static zzcf zzk() {
        return b.j;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzcf) && (this instanceof b) && (((zzcf) obj) instanceof b) && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj == this) {
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

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }

    public zzca j() {
        Object[] array = toArray();
        qya qyaVar = zzca.c;
        return zzca.i(array.length, array);
    }

    @Override // com.google.android.gms.internal.play_billing.zzbx
    public zzca zzd() {
        zzca zzcaVar = this.c;
        if (zzcaVar != null) {
            return zzcaVar;
        }
        zzca zzcaVarJ = j();
        this.c = zzcaVarJ;
        return zzcaVarJ;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbx, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: zze, reason: merged with bridge method [inline-methods] */
    public abstract zzcs iterator();
}
