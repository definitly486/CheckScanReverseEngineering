package com.google.common.collect;

import defpackage.eg9;
import defpackage.o8;
import defpackage.y69;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class x<K, V> extends l<K, V> {
    public static final x h = new x(null, new Object[0], 0);
    public final transient Object e;
    public final transient Object[] f;
    public final transient int g;

    public static final class a<K, V> extends n<Map.Entry<K, V>> {
        public final transient x e;
        public final transient Object[] f;
        public final transient int g;

        /* JADX INFO: renamed from: com.google.common.collect.x$a$a, reason: collision with other inner class name */
        public class C0133a extends j<Map.Entry<K, V>> {
            public C0133a() {
            }

            @Override // java.util.List
            public final Object get(int i) {
                a aVar = a.this;
                o8.j(i, aVar.g);
                Object[] objArr = aVar.f;
                int i2 = i * 2;
                Object obj = objArr[i2];
                Objects.requireNonNull(obj);
                Object obj2 = objArr[i2 + 1];
                Objects.requireNonNull(obj2);
                return new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }

            @Override // com.google.common.collect.i
            public final boolean i() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public final int size() {
                return a.this.g;
            }

            @Override // com.google.common.collect.j, com.google.common.collect.i
            public Object writeReplace() {
                return super.writeReplace();
            }
        }

        public a(x xVar, Object[] objArr, int i) {
            this.e = xVar;
            this.f = objArr;
            this.g = i;
        }

        @Override // com.google.common.collect.i
        public final int b(int i, Object[] objArr) {
            return a().b(i, objArr);
        }

        @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.e.get(key));
        }

        @Override // com.google.common.collect.i
        public final boolean i() {
            return true;
        }

        @Override // com.google.common.collect.n, com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        /* JADX INFO: renamed from: j */
        public final y69<Map.Entry<K, V>> iterator() {
            return a().listIterator(0);
        }

        @Override // com.google.common.collect.n
        public final j<Map.Entry<K, V>> p() {
            return new C0133a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.g;
        }

        @Override // com.google.common.collect.n, com.google.common.collect.i
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public static final class b<K> extends n<K> {
        public final transient x e;
        public final transient c f;

        public b(x xVar, c cVar) {
            this.e = xVar;
            this.f = cVar;
        }

        @Override // com.google.common.collect.n, com.google.common.collect.i
        public final j<K> a() {
            return this.f;
        }

        @Override // com.google.common.collect.i
        public final int b(int i, Object[] objArr) {
            return this.f.b(i, objArr);
        }

        @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.e.get(obj) != null;
        }

        @Override // com.google.common.collect.i
        public final boolean i() {
            return true;
        }

        @Override // com.google.common.collect.n, com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        /* JADX INFO: renamed from: j */
        public final y69<K> iterator() {
            return this.f.listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.e.g;
        }

        @Override // com.google.common.collect.n, com.google.common.collect.i
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public static final class c extends j<Object> {
        public final transient Object[] d;
        public final transient int e;
        public final transient int f;

        public c(Object[] objArr, int i, int i2) {
            this.d = objArr;
            this.e = i;
            this.f = i2;
        }

        @Override // java.util.List
        public final Object get(int i) {
            o8.j(i, this.f);
            Object obj = this.d[(i * 2) + this.e];
            Objects.requireNonNull(obj);
            return obj;
        }

        @Override // com.google.common.collect.i
        public final boolean i() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f;
        }

        @Override // com.google.common.collect.j, com.google.common.collect.i
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public x(Object obj, Object[] objArr, int i) {
        this.e = obj;
        this.f = objArr;
        this.g = i;
    }

    /* JADX WARN: Code duplicated, block: B:74:0x0199  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:77:0x01b6  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v12 */
    /* JADX WARN: Type inference failed for: r16v13 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object[]] */
    public static <K, V> x<K, V> n(int i, Object[] objArr, l.a<K, V> aVar) {
        boolean z;
        int i2;
        char c2;
        ?? r3;
        char c3;
        short[] sArr;
        boolean z2;
        int i3;
        ?? r16;
        boolean z3;
        ?? r4;
        Object[] objArr2;
        l.a.C0132a c0132a;
        boolean z4;
        int i4 = i;
        Object[] objArrCopyOf = objArr;
        if (i4 == 0) {
            return h;
        }
        l.a.C0132a c0132a2 = null;
        ?? r5 = 0;
        l.a.C0132a c0132a3 = null;
        l.a.C0132a c0132a4 = null;
        boolean z5 = false;
        int i5 = 1;
        if (i4 == 1) {
            Objects.requireNonNull(objArrCopyOf[0]);
            Objects.requireNonNull(objArrCopyOf[1]);
            return new x<>(null, objArrCopyOf, 1);
        }
        o8.n(i4, objArrCopyOf.length >> 1);
        int iK = n.k(i4);
        char c4 = 2;
        if (i4 != 1) {
            int i6 = iK - 1;
            if (iK <= 128) {
                byte[] bArr = new byte[iK];
                Arrays.fill(bArr, (byte) -1);
                int i7 = 0;
                int i8 = 0;
                while (i7 < i4) {
                    int i9 = i7 * 2;
                    int i10 = i8 * 2;
                    Object obj = objArrCopyOf[i9];
                    Objects.requireNonNull(obj);
                    Object obj2 = objArrCopyOf[i9 ^ i5];
                    Objects.requireNonNull(obj2);
                    int iF = eg9.f(obj.hashCode());
                    while (true) {
                        int i11 = iF & i6;
                        z2 = z5;
                        i3 = i5;
                        int i12 = bArr[i11] & 255;
                        if (i12 == 255) {
                            bArr[i11] = (byte) i10;
                            if (i8 < i7) {
                                objArrCopyOf[i10] = obj;
                                objArrCopyOf[i10 ^ 1] = obj2;
                            }
                            i8++;
                            break;
                        }
                        if (obj.equals(objArrCopyOf[i12 == true ? 1 : 0])) {
                            int i13 = ~i12;
                            Object obj3 = objArrCopyOf[i13 == true ? 1 : 0];
                            Objects.requireNonNull(obj3);
                            c0132a3 = new l.a.C0132a(obj, obj2, obj3);
                            objArrCopyOf[i13 == true ? 1 : 0] = obj2;
                            break;
                        }
                        iF = i11 + 1;
                        z5 = z2;
                        i5 = i3;
                    }
                    i7++;
                    z5 = z2;
                    i5 = i3;
                }
                z = z5;
                i2 = i5;
                if (i8 == i4) {
                    r5 = bArr;
                    z4 = z;
                } else {
                    sArr = new Object[3];
                    sArr[z ? 1 : 0] = bArr;
                    sArr[i2] = Integer.valueOf(i8);
                    sArr[2] = c0132a3;
                    r5 = sArr;
                    z4 = z;
                }
            } else {
                z = false;
                i2 = 1;
                if (iK <= 32768) {
                    sArr = new short[iK];
                    Arrays.fill(sArr, (short) -1);
                    int i14 = 0;
                    for (int i15 = 0; i15 < i4; i15++) {
                        int i16 = i15 * 2;
                        int i17 = i14 * 2;
                        Object obj4 = objArrCopyOf[i16];
                        Objects.requireNonNull(obj4);
                        Object obj5 = objArrCopyOf[i16 ^ 1];
                        Objects.requireNonNull(obj5);
                        int iF2 = eg9.f(obj4.hashCode());
                        while (true) {
                            int i18 = iF2 & i6;
                            int i19 = sArr[i18] & 65535;
                            if (i19 == 65535) {
                                sArr[i18] = (short) i17;
                                if (i14 < i15) {
                                    objArrCopyOf[i17] = obj4;
                                    objArrCopyOf[i17 ^ 1] = obj5;
                                }
                                i14++;
                                break;
                            }
                            if (obj4.equals(objArrCopyOf[i19 == true ? 1 : 0])) {
                                int i20 = ~i19;
                                Object obj6 = objArrCopyOf[i20 == true ? 1 : 0];
                                Objects.requireNonNull(obj6);
                                c0132a4 = new l.a.C0132a(obj4, obj5, obj6);
                                objArrCopyOf[i20 == true ? 1 : 0] = obj5;
                                break;
                            }
                            iF2 = i18 + 1;
                        }
                    }
                    if (i14 == i4) {
                        r5 = sArr;
                        z4 = z;
                    } else {
                        r5 = new Object[]{sArr, Integer.valueOf(i14), c0132a4};
                        z4 = z;
                    }
                } else {
                    int[] iArr = new int[iK];
                    Arrays.fill(iArr, -1);
                    int i21 = 0;
                    int i22 = 0;
                    while (i21 < i4) {
                        int i23 = i21 * 2;
                        int i24 = i22 * 2;
                        Object obj7 = objArrCopyOf[i23];
                        Objects.requireNonNull(obj7);
                        Object obj8 = objArrCopyOf[i23 ^ 1];
                        Objects.requireNonNull(obj8);
                        int iF3 = eg9.f(obj7.hashCode());
                        while (true) {
                            int i25 = iF3 & i6;
                            int i26 = iArr[i25];
                            if (i26 == -1) {
                                iArr[i25] = i24;
                                if (i22 < i21) {
                                    objArrCopyOf[i24] = obj7;
                                    objArrCopyOf[i24 ^ 1] = obj8;
                                }
                                i22++;
                                c3 = c4;
                                break;
                            }
                            c3 = c4;
                            if (obj7.equals(objArrCopyOf[i26])) {
                                int i27 = i26 ^ 1;
                                Object obj9 = objArrCopyOf[i27];
                                Objects.requireNonNull(obj9);
                                c0132a2 = new l.a.C0132a(obj7, obj8, obj9);
                                objArrCopyOf[i27] = obj8;
                                break;
                            }
                            iF3 = i25 + 1;
                            c4 = c3;
                        }
                        i21++;
                        c4 = c3;
                    }
                    c2 = c4;
                    if (i22 == i4) {
                        r3 = iArr;
                        r16 = z;
                    } else {
                        Object[] objArr3 = new Object[3];
                        objArr3[0] = iArr;
                        objArr3[1] = Integer.valueOf(i22);
                        objArr3[c2] = c0132a2;
                        r3 = objArr3;
                        r16 = z;
                    }
                }
            }
            z3 = r3 instanceof Object[];
            r4 = r3;
            if (z3) {
                objArr2 = (Object[]) r3;
                c0132a = (l.a.C0132a) objArr2[c2];
                if (aVar != null) {
                    throw c0132a.a();
                }
                aVar.c = c0132a;
                Object obj10 = objArr2[r16];
                int iIntValue = ((Integer) objArr2[i2]).intValue();
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue * 2);
                r4 = obj10;
                i4 = iIntValue;
            }
            return new x<>(r4, objArrCopyOf, i4);
        }
        Objects.requireNonNull(objArrCopyOf[0]);
        Objects.requireNonNull(objArrCopyOf[1]);
        z4 = false;
        i2 = 1;
        c2 = 2;
        r3 = r5;
        r16 = z4;
        z3 = r3 instanceof Object[];
        r4 = r3;
        if (z3) {
            objArr2 = (Object[]) r3;
            c0132a = (l.a.C0132a) objArr2[c2];
            if (aVar != null) {
                throw c0132a.a();
            }
            aVar.c = c0132a;
            Object obj11 = objArr2[r16];
            int iIntValue2 = ((Integer) objArr2[i2]).intValue();
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue2 * 2);
            r4 = obj11;
            i4 = iIntValue2;
        }
        return new x<>(r4, objArrCopyOf, i4);
    }

    @Override // com.google.common.collect.l
    public final a d() {
        return new a(this, this.f, this.g);
    }

    @Override // com.google.common.collect.l
    public final b e() {
        return new b(this, new c(this.f, 0, this.g));
    }

    @Override // com.google.common.collect.l
    public final c g() {
        return new c(this.f, 1, this.g);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override // com.google.common.collect.l, java.util.Map
    public final V get(Object obj) {
        V v;
        if (obj == null) {
            v = null;
        } else {
            Object[] objArr = this.f;
            if (this.g == 1) {
                Object obj2 = objArr[0];
                Objects.requireNonNull(obj2);
                if (obj2.equals(obj)) {
                    v = (V) objArr[1];
                    Objects.requireNonNull(v);
                } else {
                    v = null;
                }
            } else {
                Object obj3 = this.e;
                if (obj3 == null) {
                    v = null;
                } else if (obj3 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj3;
                    int length = bArr.length - 1;
                    int iF = eg9.f(obj.hashCode());
                    while (true) {
                        int i = iF & length;
                        int i2 = bArr[i] & 255;
                        if (i2 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i2])) {
                            v = (V) objArr[i2 ^ 1];
                        } else {
                            iF = i + 1;
                        }
                    }
                    v = null;
                } else if (obj3 instanceof short[]) {
                    short[] sArr = (short[]) obj3;
                    int length2 = sArr.length - 1;
                    int iF2 = eg9.f(obj.hashCode());
                    while (true) {
                        int i3 = iF2 & length2;
                        int i4 = sArr[i3] & 65535;
                        if (i4 == 65535) {
                            break;
                        }
                        if (obj.equals(objArr[i4])) {
                            v = (V) objArr[i4 ^ 1];
                        } else {
                            iF2 = i3 + 1;
                        }
                    }
                    v = null;
                } else {
                    int[] iArr = (int[]) obj3;
                    int length3 = iArr.length - 1;
                    int iF3 = eg9.f(obj.hashCode());
                    while (true) {
                        int i5 = iF3 & length3;
                        int i6 = iArr[i5];
                        if (i6 == -1) {
                            break;
                        }
                        if (obj.equals(objArr[i6])) {
                            v = (V) objArr[i6 ^ 1];
                        } else {
                            iF3 = i5 + 1;
                        }
                    }
                    v = null;
                }
            }
        }
        if (v == null) {
            return null;
        }
        return v;
    }

    @Override // java.util.Map
    public final int size() {
        return this.g;
    }

    @Override // com.google.common.collect.l
    public Object writeReplace() {
        return super.writeReplace();
    }
}
