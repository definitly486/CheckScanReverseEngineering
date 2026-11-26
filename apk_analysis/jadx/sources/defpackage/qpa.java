package defpackage;

import com.google.android.gms.internal.measurement.zzabe;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class qpa extends AbstractMap {
    public static final hpa g = new hpa();
    public final Object[] b;
    public final int[] c;
    public final ppa d;
    public Integer e;
    public String f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractMap, qpa] */
    /* JADX WARN: Type inference failed for: r0v1, types: [qpa] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v8 */
    public qpa(qpa qpaVar, qpa qpaVar2) {
        Object obj;
        Object[] objArr;
        ?? abstractMap = new AbstractMap();
        abstractMap.d = new ppa(abstractMap, -1);
        abstractMap.e = null;
        abstractMap.f = null;
        int size = qpaVar2.size() + qpaVar.size();
        int i = qpaVar.c[qpaVar.size()] + qpaVar2.c[qpaVar2.size()];
        int i2 = size + 1;
        Object[] objArr2 = new Object[i];
        int[] iArr = new int[i2];
        int i3 = 0;
        iArr[0] = size;
        Map.Entry entryC = qpaVar.c(0);
        Map.Entry entryC2 = qpaVar2.c(0);
        int i4 = 0;
        int i5 = 0;
        int iA = size;
        int i6 = 0;
        while (true) {
            if (entryC == null && entryC2 == null) {
                break;
            }
            i6++;
            if (entryC != null) {
                if (entryC2 != null) {
                    int iCompareTo = ((String) entryC.getKey()).compareTo((String) entryC2.getKey());
                    if (iCompareTo == 0) {
                        int i7 = i4 + 1;
                        int i8 = i5 + 1;
                        objArr2[i6] = new AbstractMap.SimpleImmutableEntry((String) entryC.getKey(), new ppa(abstractMap, i6));
                        ppa ppaVar = (ppa) entryC.getValue();
                        ppa ppaVar2 = (ppa) entryC2.getValue();
                        int i9 = 0;
                        int i10 = 0;
                        abstractMap = abstractMap;
                        while (true) {
                            int iB = ppaVar.b();
                            qpa qpaVar3 = ppaVar.c;
                            if (i9 >= iB - ppaVar.a() && i10 >= ppaVar2.b() - ppaVar2.a()) {
                                break;
                            }
                            int iCompare = i9 == ppaVar.b() - ppaVar.a() ? 1 : i10 == ppaVar2.b() - ppaVar2.a() ? -1 : 0;
                            if (iCompare == 0) {
                                fpa fpaVar = zzabe.b;
                                iCompare = zzabe.b.compare(qpaVar3.b[ppaVar.a() + i9], ppaVar2.c.b[ppaVar2.a() + i10]);
                            }
                            if (iCompare < 0) {
                                i9++;
                                obj = qpaVar3.b[ppaVar.a() + i9];
                            } else {
                                int i11 = i10 + 1;
                                Object obj2 = ppaVar2.c.b[ppaVar2.a() + i10];
                                if (iCompare == 0) {
                                    i10 = i11;
                                    obj = obj2;
                                    i9++;
                                } else {
                                    i10 = i11;
                                    obj = obj2;
                                    i9 = i9;
                                }
                            }
                            objArr2[iA] = obj;
                            abstractMap = this;
                            iA++;
                        }
                        iArr[i6] = iA;
                        entryC = qpaVar.c(i8);
                        entryC2 = qpaVar2.c(i7);
                        i5 = i8;
                        i4 = i7;
                        i3 = 0;
                    } else {
                        if (iCompareTo < 0) {
                        }
                        i3 = 0;
                        abstractMap = this;
                    }
                }
                i5++;
                iA = a(entryC, i6, iA, objArr2, iArr);
                entryC = qpaVar.c(i5);
                i3 = 0;
                abstractMap = this;
            }
            Map.Entry entry = entryC;
            i4++;
            int iA2 = a(entryC2, i6, iA, objArr2, iArr);
            entryC2 = qpaVar2.c(i4);
            iA = iA2;
            entryC = entry;
            i3 = 0;
            abstractMap = this;
        }
        int i12 = iArr[i3];
        int i13 = i12 - i6;
        if (i13 != 0) {
            for (int i14 = i3; i14 <= i6; i14++) {
                iArr[i14] = iArr[i14] - i13;
            }
            int i15 = iArr[i6];
            int i16 = i15 - i6;
            if (b(i, i15)) {
                objArr = new Object[i15];
                System.arraycopy(objArr2, i3, objArr, i3, i6);
            } else {
                objArr = objArr2;
            }
            System.arraycopy(objArr2, i12, objArr, i6, i16);
            objArr2 = objArr;
        }
        abstractMap.b = objArr2;
        int i17 = iArr[i3] + 1;
        abstractMap.c = b(i2, i17) ? Arrays.copyOf(iArr, i17) : iArr;
    }

    public static boolean b(int i, int i2) {
        return i > 16 && i * 9 > i2 * 10;
    }

    public final int a(Map.Entry entry, int i, int i2, Object[] objArr, int[] iArr) {
        ppa ppaVar = (ppa) entry.getValue();
        int iB = ppaVar.b() - ppaVar.a();
        System.arraycopy(ppaVar.c.b, ppaVar.a(), objArr, i2, iB);
        objArr[i] = new AbstractMap.SimpleImmutableEntry((String) entry.getKey(), new ppa(this, i));
        int i3 = i2 + iB;
        iArr[i + 1] = i3;
        return i3;
    }

    public final Map.Entry c(int i) {
        if (i < this.c[0]) {
            return (Map.Entry) this.b[i];
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return this.d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        Integer numValueOf = this.e;
        if (numValueOf == null) {
            numValueOf = Integer.valueOf(super.hashCode());
            this.e = numValueOf;
        }
        return numValueOf.intValue();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        String str = this.f;
        if (str != null) {
            return str;
        }
        String string = super.toString();
        this.f = string;
        return string;
    }

    public qpa() {
        List list = Collections.EMPTY_LIST;
        this.d = new ppa(this, -1);
        this.e = null;
        this.f = null;
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            int size = list.size();
            Object[] objArr = new Object[size];
            Iterator it2 = list.iterator();
            if (!it2.hasNext()) {
                int[] iArr = {0};
                this.b = b(size, 0) ? Arrays.copyOf(objArr, 0) : objArr;
                this.c = iArr;
                return;
            }
            throw null;
        }
        throw null;
    }
}
