package yads;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class p55 extends re3 {
    public static final p55 h = new p55(null, new Object[0], 0);
    public final transient Object e;
    public final transient Object[] f;
    public final transient int g;

    public p55(Object obj, Object[] objArr, int i) {
        this.e = obj;
        this.f = objArr;
        this.g = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int[]] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r8v0, types: [int] */
    public static p55 a(int i, Object[] objArr) {
        byte[] bArr;
        int i2;
        int i3;
        int i4;
        if (i == 0) {
            return h;
        }
        ?? r0 = 0;
        int i5 = 0;
        if (i == 1) {
            Objects.requireNonNull(objArr[0]);
            Objects.requireNonNull(objArr[1]);
            return new p55(null, objArr, 1);
        }
        wx4.b(i, objArr.length >> 1);
        int iA = te3.a(i);
        if (i == 1) {
            Objects.requireNonNull(objArr[0]);
            Objects.requireNonNull(objArr[1]);
        } else {
            int i6 = iA - 1;
            if (iA <= 128) {
                bArr = new byte[iA];
                Arrays.fill(bArr, (byte) -1);
                while (i5 < i) {
                    int i7 = i5 * 2;
                    Object obj = objArr[i7];
                    Objects.requireNonNull(obj);
                    Object obj2 = objArr[i7 ^ 1];
                    Objects.requireNonNull(obj2);
                    int iA2 = p83.a(obj.hashCode());
                    while (true) {
                        i4 = iA2 & i6;
                        int i8 = bArr[i4] & 255;
                        if (i8 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i8])) {
                            throw a(obj, obj2, objArr, i8);
                        }
                        iA2 = i4 + 1;
                    }
                    bArr[i4] = (byte) i7;
                    i5++;
                }
            } else if (iA <= 32768) {
                bArr = new short[iA];
                Arrays.fill(bArr, (short) -1);
                while (i5 < i) {
                    int i9 = i5 * 2;
                    Object obj3 = objArr[i9];
                    Objects.requireNonNull(obj3);
                    Object obj4 = objArr[i9 ^ 1];
                    Objects.requireNonNull(obj4);
                    int iA3 = p83.a(obj3.hashCode());
                    while (true) {
                        i3 = iA3 & i6;
                        int i10 = bArr[i3] & 65535;
                        if (i10 == 65535) {
                            break;
                        }
                        if (obj3.equals(objArr[i10])) {
                            throw a(obj3, obj4, objArr, i10);
                        }
                        iA3 = i3 + 1;
                    }
                    bArr[i3] = (short) i9;
                    i5++;
                }
            } else {
                bArr = new int[iA];
                Arrays.fill((int[]) bArr, -1);
                while (i5 < i) {
                    int i11 = i5 * 2;
                    Object obj5 = objArr[i11];
                    Objects.requireNonNull(obj5);
                    Object obj6 = objArr[i11 ^ 1];
                    Objects.requireNonNull(obj6);
                    int iA4 = p83.a(obj5.hashCode());
                    while (true) {
                        i2 = iA4 & i6;
                        ?? r8 = bArr[i2];
                        if (r8 == -1) {
                            break;
                        }
                        if (obj5.equals(objArr[r8])) {
                            throw a(obj5, obj6, objArr, r8);
                        }
                        iA4 = i2 + 1;
                    }
                    bArr[i2] = i11;
                    i5++;
                }
            }
            r0 = bArr;
        }
        return new p55(r0, objArr, i);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x008d A[EDGE_INSN: B:43:0x008d->B:35:0x008d BREAK  A[LOOP:0: B:15:0x0036->B:21:0x004c], EDGE_INSN: B:45:0x008d->B:35:0x008d BREAK  A[LOOP:1: B:25:0x0061->B:31:0x0078], EDGE_INSN: B:47:0x008d->B:35:0x008d BREAK  A[LOOP:2: B:33:0x0087->B:42:0x009f]] */
    @Override // yads.re3, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        Object obj3 = this.e;
        Object[] objArr = this.f;
        int i = this.g;
        if (obj == null) {
            obj2 = null;
        } else if (i == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            if (obj4.equals(obj)) {
                obj2 = objArr[1];
                Objects.requireNonNull(obj2);
            } else {
                obj2 = null;
            }
        } else if (obj3 == null) {
            obj2 = null;
        } else if (obj3 instanceof byte[]) {
            byte[] bArr = (byte[]) obj3;
            int length = bArr.length - 1;
            int iA = p83.a(obj.hashCode());
            while (true) {
                int i2 = iA & length;
                int i3 = bArr[i2] & 255;
                if (i3 == 255) {
                    break;
                }
                if (obj.equals(objArr[i3])) {
                    obj2 = objArr[i3 ^ 1];
                } else {
                    iA = i2 + 1;
                }
            }
            obj2 = null;
        } else if (obj3 instanceof short[]) {
            short[] sArr = (short[]) obj3;
            int length2 = sArr.length - 1;
            int iA2 = p83.a(obj.hashCode());
            while (true) {
                int i4 = iA2 & length2;
                int i5 = sArr[i4] & 65535;
                if (i5 == 65535) {
                    break;
                }
                if (obj.equals(objArr[i5])) {
                    obj2 = objArr[i5 ^ 1];
                } else {
                    iA2 = i4 + 1;
                }
            }
            obj2 = null;
        } else {
            int[] iArr = (int[]) obj3;
            int length3 = iArr.length - 1;
            int iA3 = p83.a(obj.hashCode());
            while (true) {
                int i6 = iA3 & length3;
                int i7 = iArr[i6];
                if (i7 == -1) {
                    break;
                }
                if (obj.equals(objArr[i7])) {
                    obj2 = objArr[i7 ^ 1];
                } else {
                    iA3 = i6 + 1;
                }
            }
            obj2 = null;
        }
        if (obj2 == null) {
            return null;
        }
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return this.g;
    }

    public static IllegalArgumentException a(Object obj, Object obj2, Object[] objArr, int i) {
        return new IllegalArgumentException("Multiple entries with same key: " + obj + "=" + obj2 + " and " + objArr[i] + "=" + objArr[i ^ 1]);
    }
}
