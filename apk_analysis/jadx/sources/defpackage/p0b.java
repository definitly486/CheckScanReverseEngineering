package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzax;
import com.google.android.gms.internal.mlkit_vision_barcode.zzaz;
import com.google.android.gms.internal.mlkit_vision_barcode.zzdw;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class p0b extends AbstractMap implements Serializable {
    public static final Object k = new Object();
    public transient Object b;
    public transient int[] c;
    public transient Object[] d;
    public transient Object[] e;
    public transient int f = zzdw.zza(12, 1, 1073741823);
    public transient int g;
    public transient e0b h;
    public transient tza i;
    public transient l0b j;

    public final int[] a() {
        int[] iArr = this.c;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final Object[] b() {
        Object[] objArr = this.d;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (j()) {
            return;
        }
        this.f += 32;
        Map mapE = e();
        if (mapE != null) {
            this.f = zzdw.zza(size(), 3, 1073741823);
            mapE.clear();
            this.b = null;
            this.g = 0;
            return;
        }
        Arrays.fill(b(), 0, this.g, (Object) null);
        Arrays.fill(d(), 0, this.g, (Object) null);
        Object obj = this.b;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(a(), 0, this.g, 0);
        this.g = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map mapE = e();
        if (mapE != null) {
            return mapE.containsKey(obj);
        }
        return m(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map mapE = e();
        if (mapE != null) {
            return mapE.containsValue(obj);
        }
        for (int i = 0; i < this.g; i++) {
            if (zzax.zza(obj, d()[i])) {
                return true;
            }
        }
        return false;
    }

    public final Object[] d() {
        Object[] objArr = this.e;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final Map e() {
        Object obj = this.b;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        tza tzaVar = this.i;
        if (tzaVar != null) {
            return tzaVar;
        }
        tza tzaVar2 = new tza(this);
        this.i = tzaVar2;
        return tzaVar2;
    }

    public final void g(int i, int i2) {
        Object obj = this.b;
        Objects.requireNonNull(obj);
        int[] iArrA = a();
        Object[] objArrB = b();
        Object[] objArrD = d();
        int size = size();
        int i3 = size - 1;
        if (i >= i3) {
            objArrB[i] = null;
            objArrD[i] = null;
            iArrA[i] = 0;
            return;
        }
        int i4 = i + 1;
        Object obj2 = objArrB[i3];
        objArrB[i] = obj2;
        objArrD[i] = objArrD[i3];
        objArrB[i3] = null;
        objArrD[i3] = null;
        iArrA[i] = iArrA[i3];
        iArrA[i3] = 0;
        int iB = nu6.b(obj2) & i2;
        int iB2 = r0b.b(iB, obj);
        if (iB2 == size) {
            r0b.d(iB, i4, obj);
            return;
        }
        while (true) {
            int i5 = iB2 - 1;
            int i6 = iArrA[i5];
            int i7 = i6 & i2;
            if (i7 == size) {
                iArrA[i5] = ((~i2) & i6) | (i4 & i2);
                return;
            }
            iB2 = i7;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Map mapE = e();
        if (mapE != null) {
            return mapE.get(obj);
        }
        int iM = m(obj);
        if (iM == -1) {
            return null;
        }
        return d()[iM];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    public final boolean j() {
        return this.b == null;
    }

    public final int k() {
        return (1 << (this.f & 31)) - 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        e0b e0bVar = this.h;
        if (e0bVar != null) {
            return e0bVar;
        }
        e0b e0bVar2 = new e0b(this);
        this.h = e0bVar2;
        return e0bVar2;
    }

    public final int m(Object obj) {
        if (j()) {
            return -1;
        }
        int iB = nu6.b(obj);
        int iK = k();
        Object obj2 = this.b;
        Objects.requireNonNull(obj2);
        int iB2 = r0b.b(iB & iK, obj2);
        if (iB2 != 0) {
            int i = ~iK;
            int i2 = iB & i;
            do {
                int i3 = iB2 - 1;
                int i4 = a()[i3];
                if ((i4 & i) == i2 && zzax.zza(obj, b()[i3])) {
                    return i3;
                }
                iB2 = i4 & iK;
            } while (iB2 != 0);
        }
        return -1;
    }

    public final int n(int i, int i2, int i3, int i4) {
        int i5 = i2 - 1;
        Object objC = r0b.c(i2);
        if (i4 != 0) {
            r0b.d(i3 & i5, i4 + 1, objC);
        }
        Object obj = this.b;
        Objects.requireNonNull(obj);
        int[] iArrA = a();
        for (int i6 = 0; i6 <= i; i6++) {
            int iB = r0b.b(i6, obj);
            while (iB != 0) {
                int i7 = iB - 1;
                int i8 = iArrA[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int iB2 = r0b.b(i10, objC);
                r0b.d(i10, iB, objC);
                iArrA[i7] = ((~i5) & i9) | (iB2 & i5);
                iB = i8 & i;
            }
        }
        this.b = objC;
        this.f = ((32 - Integer.numberOfLeadingZeros(i5)) & 31) | (this.f & (-32));
        return i5;
    }

    public final Object o(Object obj) {
        if (!j()) {
            int iK = k();
            Object obj2 = this.b;
            Objects.requireNonNull(obj2);
            int iA = r0b.a(obj, null, iK, obj2, a(), b(), null);
            if (iA != -1) {
                Object obj3 = d()[iA];
                g(iA, iK);
                this.g--;
                this.f += 32;
                return obj3;
            }
        }
        return k;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        int i;
        int i2 = 32;
        if (j()) {
            zzaz.zzf(j(), "Arrays already allocated");
            int i3 = this.f;
            int iMax = Math.max(i3 + 1, 2);
            int iHighestOneBit = Integer.highestOneBit(iMax);
            if (iMax > iHighestOneBit && (iHighestOneBit = iHighestOneBit + iHighestOneBit) <= 0) {
                iHighestOneBit = 1073741824;
            }
            int iMax2 = Math.max(4, iHighestOneBit);
            this.b = r0b.c(iMax2);
            this.f = ((32 - Integer.numberOfLeadingZeros(iMax2 - 1)) & 31) | (this.f & (-32));
            this.c = new int[i3];
            this.d = new Object[i3];
            this.e = new Object[i3];
        }
        Map mapE = e();
        if (mapE != null) {
            return mapE.put(obj, obj2);
        }
        int[] iArrA = a();
        Object[] objArrB = b();
        Object[] objArrD = d();
        int i4 = this.g;
        int i5 = i4 + 1;
        int iB = nu6.b(obj);
        int iK = k();
        int i6 = iB & iK;
        Object obj3 = this.b;
        Objects.requireNonNull(obj3);
        int iB2 = r0b.b(i6, obj3);
        if (iB2 == 0) {
            if (i5 > iK) {
                iK = n(iK, (iK + 1) * (iK < 32 ? 4 : 2), iB, i4);
            } else {
                Object obj4 = this.b;
                Objects.requireNonNull(obj4);
                r0b.d(i6, i5, obj4);
            }
            i = 1;
        } else {
            int i7 = ~iK;
            int i8 = iB & i7;
            int i9 = 0;
            while (true) {
                int i10 = iB2 - 1;
                int i11 = iArrA[i10];
                i = 1;
                int i12 = i11 & i7;
                int i13 = i2;
                if (i12 == i8 && zzax.zza(obj, objArrB[i10])) {
                    Object obj5 = objArrD[i10];
                    objArrD[i10] = obj2;
                    return obj5;
                }
                int i14 = i11 & iK;
                int i15 = i9 + 1;
                if (i14 == 0) {
                    if (i15 < 9) {
                        if (i5 <= iK) {
                            iArrA[i10] = (i5 & iK) | i12;
                            break;
                        }
                        iK = n(iK, (iK + 1) * (iK < i13 ? 4 : 2), iB, i4);
                        break;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(k() + 1, 1.0f);
                    int i16 = isEmpty() ? -1 : 0;
                    while (i16 >= 0) {
                        linkedHashMap.put(b()[i16], d()[i16]);
                        int i17 = i16 + 1;
                        i16 = i17 < this.g ? i17 : -1;
                    }
                    this.b = linkedHashMap;
                    this.c = null;
                    this.d = null;
                    this.e = null;
                    this.f += 32;
                    return linkedHashMap.put(obj, obj2);
                }
                i9 = i15;
                iB2 = i14;
                i2 = i13;
            }
        }
        int length = a().length;
        if (i5 > length) {
            int i18 = i;
            int iMin = Math.min(1073741823, (Math.max(i18, length >>> 1) + length) | i18);
            if (iMin != length) {
                this.c = Arrays.copyOf(a(), iMin);
                this.d = Arrays.copyOf(b(), iMin);
                this.e = Arrays.copyOf(d(), iMin);
            }
        }
        a()[i4] = (~iK) & iB;
        b()[i4] = obj;
        d()[i4] = obj2;
        this.g = i5;
        this.f += 32;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Map mapE = e();
        if (mapE != null) {
            return mapE.remove(obj);
        }
        Object objO = o(obj);
        if (objO == k) {
            return null;
        }
        return objO;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map mapE = e();
        return mapE != null ? mapE.size() : this.g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        l0b l0bVar = this.j;
        if (l0bVar != null) {
            return l0bVar;
        }
        l0b l0bVar2 = new l0b(this);
        this.j = l0bVar2;
        return l0bVar2;
    }
}
