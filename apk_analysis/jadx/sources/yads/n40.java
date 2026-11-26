package yads;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class n40 extends AbstractMap implements Serializable {
    public static final Object k = new Object();
    public transient Object b;
    public transient int[] c;
    public transient Object[] d;
    public transient Object[] e;
    public transient int f = Math.min(Math.max(8, 1), 1073741823);
    public transient int g;
    public transient k40 h;
    public transient i40 i;
    public transient m40 j;

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        if (i < 0) {
            throw new InvalidObjectException(vx4.a(i, "Invalid size: "));
        }
        if (!(i >= 0)) {
            defpackage.fg.c("Expected size must be >= 0");
            return;
        }
        this.f = Math.min(Math.max(i, 1), 1073741823);
        for (int i2 = 0; i2 < i; i2++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Map mapA = a();
        Iterator it = mapA != null ? mapA.entrySet().iterator() : new g40(this);
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    public final int a(int i, int i2, int i3, int i4) {
        if (i2 < 2 || i2 > 1073741824 || Integer.highestOneBit(i2) != i2) {
            defpackage.fg.c(vx4.a(i2, "must be power of 2 between 2^1 and 2^30: "));
            return 0;
        }
        Object obj = i2 <= 256 ? new byte[i2] : i2 <= 65536 ? new short[i2] : new int[i2];
        int i5 = i2 - 1;
        if (i4 != 0) {
            o40.a(i3 & i5, i4 + 1, obj);
        }
        Object obj2 = this.b;
        Objects.requireNonNull(obj2);
        int[] iArr = this.c;
        Objects.requireNonNull(iArr);
        int[] iArr2 = iArr;
        for (int i6 = 0; i6 <= i; i6++) {
            int iA = o40.a(i6, obj2);
            while (iA != 0) {
                int i7 = iA - 1;
                int i8 = iArr2[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int iA2 = o40.a(i10, obj);
                o40.a(i10, iA, obj);
                iArr2[i7] = ((~i5) & i9) | (iA2 & i5);
                iA = i8 & i;
            }
        }
        this.b = obj;
        this.f = ((32 - Integer.numberOfLeadingZeros(i5)) & 31) | (this.f & (-32));
        return i5;
    }

    public final Object b(Object obj) {
        if (b()) {
            return k;
        }
        int i = (1 << (this.f & 31)) - 1;
        Object obj2 = this.b;
        Objects.requireNonNull(obj2);
        int[] iArr = this.c;
        Objects.requireNonNull(iArr);
        int[] iArr2 = iArr;
        Object[] objArr = this.d;
        Objects.requireNonNull(objArr);
        int iA = o40.a(obj, null, i, obj2, iArr2, objArr, null);
        if (iA == -1) {
            return k;
        }
        Object objB = b(iA);
        a(iA, i);
        this.g--;
        this.f += 32;
        return objB;
    }

    public final int[] c() {
        int[] iArr = this.c;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (b()) {
            return;
        }
        this.f += 32;
        Map mapA = a();
        if (mapA != null) {
            this.f = Math.min(Math.max(size(), 3), 1073741823);
            mapA.clear();
            this.b = null;
            this.g = 0;
            return;
        }
        Object[] objArr = this.d;
        Objects.requireNonNull(objArr);
        Arrays.fill(objArr, 0, this.g, (Object) null);
        Object[] objArr2 = this.e;
        Objects.requireNonNull(objArr2);
        Arrays.fill(objArr2, 0, this.g, (Object) null);
        Object obj = this.b;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        int[] iArr = this.c;
        Objects.requireNonNull(iArr);
        Arrays.fill(iArr, 0, this.g, 0);
        this.g = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map mapA = a();
        if (mapA != null) {
            return mapA.containsKey(obj);
        }
        return a(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map mapA = a();
        if (mapA != null) {
            return mapA.containsValue(obj);
        }
        for (int i = 0; i < this.g; i++) {
            if (ep4.a(obj, b(i))) {
                return true;
            }
        }
        return false;
    }

    public final Object[] d() {
        Object[] objArr = this.d;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final Object e() {
        Object obj = this.b;
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        i40 i40Var = this.i;
        if (i40Var != null) {
            return i40Var;
        }
        i40 i40Var2 = new i40(this);
        this.i = i40Var2;
        return i40Var2;
    }

    public final Object[] f() {
        Object[] objArr = this.e;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Map mapA = a();
        if (mapA != null) {
            return mapA.get(obj);
        }
        int iA = a(obj);
        if (iA == -1) {
            return null;
        }
        return b(iA);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        k40 k40Var = this.h;
        if (k40Var != null) {
            return k40Var;
        }
        k40 k40Var2 = new k40(this);
        this.h = k40Var2;
        return k40Var2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x0120, code lost:
    
        r13 = -1;
     */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object put(Object obj, Object obj2) {
        int i;
        int i2;
        Object obj3;
        int i3 = 32;
        if (b()) {
            if (!b()) {
                defpackage.ah.f("Arrays already allocated");
                return null;
            }
            int i4 = this.f;
            int iMax = Math.max(i4 + 1, 2);
            int iHighestOneBit = Integer.highestOneBit(iMax);
            if (iMax > ((int) (((double) iHighestOneBit) * 1.0d)) && (iHighestOneBit = iHighestOneBit << 1) <= 0) {
                iHighestOneBit = 1073741824;
            }
            int iMax2 = Math.max(4, iHighestOneBit);
            if (iMax2 < 2 || iMax2 > 1073741824 || Integer.highestOneBit(iMax2) != iMax2) {
                defpackage.fg.c(vx4.a(iMax2, "must be power of 2 between 2^1 and 2^30: "));
                return null;
            }
            if (iMax2 <= 256) {
                obj3 = new byte[iMax2];
            } else {
                obj3 = iMax2 <= 65536 ? new short[iMax2] : new int[iMax2];
            }
            this.b = obj3;
            this.f = ((32 - Integer.numberOfLeadingZeros(iMax2 - 1)) & 31) | (this.f & (-32));
            this.c = new int[i4];
            this.d = new Object[i4];
            this.e = new Object[i4];
        }
        Map mapA = a();
        if (mapA != null) {
            return mapA.put(obj, obj2);
        }
        int[] iArr = this.c;
        Objects.requireNonNull(iArr);
        int[] iArr2 = iArr;
        Object[] objArr = this.d;
        Objects.requireNonNull(objArr);
        Object[] objArr2 = objArr;
        Object[] objArr3 = this.e;
        Objects.requireNonNull(objArr3);
        Object[] objArr4 = objArr3;
        int i5 = this.g;
        int i6 = i5 + 1;
        int iA = p83.a(obj == null ? 0 : obj.hashCode());
        int i7 = 1 << (this.f & 31);
        int iA2 = i7 - 1;
        int i8 = iA & iA2;
        Object obj4 = this.b;
        Objects.requireNonNull(obj4);
        int iA3 = o40.a(i8, obj4);
        if (iA3 == 0) {
            if (i6 > iA2) {
                iA2 = a(iA2, i7 * (iA2 < 32 ? 4 : 2), iA, i5);
            } else {
                Object obj5 = this.b;
                Objects.requireNonNull(obj5);
                o40.a(i8, i6, obj5);
            }
            i = 1;
        } else {
            int i9 = ~iA2;
            i = 1;
            int i10 = iA & i9;
            int i11 = 0;
            while (true) {
                int i12 = iA3 - 1;
                int i13 = iArr2[i12];
                int i14 = i3;
                int i15 = i13 & i9;
                if (i15 == i10 && ep4.a(obj, objArr2[i12])) {
                    Object obj6 = objArr4[i12];
                    objArr4[i12] = obj2;
                    return obj6;
                }
                int i16 = i13 & iA2;
                int[] iArr3 = iArr2;
                int i17 = i11 + 1;
                if (i16 != 0) {
                    i11 = i17;
                    iA3 = i16;
                    iArr2 = iArr3;
                    i3 = i14;
                } else {
                    if (i17 < 9) {
                        if (i6 <= iA2) {
                            iArr3[i12] = (i6 & iA2) | i15;
                            break;
                        }
                        iA2 = a(iA2, i7 * (iA2 < i14 ? 4 : 2), iA, i5);
                        break;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(1 << (this.f & 31), 1.0f);
                    if (!isEmpty()) {
                        i2 = 0;
                        while (i2 >= 0) {
                            linkedHashMap.put(a(i2), b(i2));
                            i2++;
                            if (i2 >= this.g) {
                                i2 = -1;
                            }
                        }
                        this.b = linkedHashMap;
                        this.c = null;
                        this.d = null;
                        this.e = null;
                        this.f += 32;
                        return linkedHashMap.put(obj, obj2);
                    }
                    i2 = -1;
                }
            }
        }
        int[] iArr4 = this.c;
        Objects.requireNonNull(iArr4);
        int length = iArr4.length;
        if (i6 > length) {
            int i18 = i;
            int iMin = Math.min(1073741823, (Math.max(i18, length >>> 1) + length) | i18);
            if (iMin != length) {
                int[] iArr5 = this.c;
                Objects.requireNonNull(iArr5);
                this.c = Arrays.copyOf(iArr5, iMin);
                Object[] objArr5 = this.d;
                Objects.requireNonNull(objArr5);
                this.d = Arrays.copyOf(objArr5, iMin);
                Object[] objArr6 = this.e;
                Objects.requireNonNull(objArr6);
                this.e = Arrays.copyOf(objArr6, iMin);
            }
        }
        int i19 = (~iA2) & iA;
        int[] iArr6 = this.c;
        Objects.requireNonNull(iArr6);
        iArr6[i5] = i19;
        Object[] objArr7 = this.d;
        Objects.requireNonNull(objArr7);
        objArr7[i5] = obj;
        a(i5, obj2);
        this.g = i6;
        this.f += 32;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Map mapA = a();
        if (mapA != null) {
            return mapA.remove(obj);
        }
        Object objB = b(obj);
        if (objB == k) {
            return null;
        }
        return objB;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map mapA = a();
        return mapA != null ? mapA.size() : this.g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        m40 m40Var = this.j;
        if (m40Var != null) {
            return m40Var;
        }
        m40 m40Var2 = new m40(this);
        this.j = m40Var2;
        return m40Var2;
    }

    public final boolean b() {
        return this.b == null;
    }

    public final Object b(int i) {
        Object[] objArr = this.e;
        Objects.requireNonNull(objArr);
        return objArr[i];
    }

    public final Map a() {
        Object obj = this.b;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final int a(Object obj) {
        if (b()) {
            return -1;
        }
        int iA = p83.a(obj == null ? 0 : obj.hashCode());
        int i = (1 << (this.f & 31)) - 1;
        Object obj2 = this.b;
        Objects.requireNonNull(obj2);
        int iA2 = o40.a(iA & i, obj2);
        if (iA2 == 0) {
            return -1;
        }
        int i2 = ~i;
        int i3 = iA & i2;
        do {
            int i4 = iA2 - 1;
            int[] iArr = this.c;
            Objects.requireNonNull(iArr);
            int i5 = iArr[i4];
            if ((i5 & i2) == i3 && ep4.a(obj, a(i4))) {
                return i4;
            }
            iA2 = i5 & i;
        } while (iA2 != 0);
        return -1;
    }

    public final void a(int i, int i2) {
        Object obj = this.b;
        Objects.requireNonNull(obj);
        int[] iArr = this.c;
        Objects.requireNonNull(iArr);
        int[] iArr2 = iArr;
        Object[] objArr = this.d;
        Objects.requireNonNull(objArr);
        Object[] objArr2 = objArr;
        Object[] objArr3 = this.e;
        Objects.requireNonNull(objArr3);
        Object[] objArr4 = objArr3;
        int size = size();
        int i3 = size - 1;
        if (i < i3) {
            Object obj2 = objArr2[i3];
            objArr2[i] = obj2;
            objArr4[i] = objArr4[i3];
            objArr2[i3] = null;
            objArr4[i3] = null;
            iArr2[i] = iArr2[i3];
            iArr2[i3] = 0;
            int iA = p83.a(obj2 != null ? obj2.hashCode() : 0) & i2;
            int iA2 = o40.a(iA, obj);
            if (iA2 == size) {
                o40.a(iA, i + 1, obj);
                return;
            }
            while (true) {
                int i4 = iA2 - 1;
                int i5 = iArr2[i4];
                int i6 = i5 & i2;
                if (i6 == size) {
                    iArr2[i4] = ((~i2) & i5) | ((i + 1) & i2);
                    return;
                }
                iA2 = i6;
            }
        } else {
            objArr2[i] = null;
            objArr4[i] = null;
            iArr2[i] = 0;
        }
    }

    public final Object a(int i) {
        Object[] objArr = this.d;
        Objects.requireNonNull(objArr);
        return objArr[i];
    }

    public final void a(int i, Object obj) {
        Object[] objArr = this.e;
        Objects.requireNonNull(objArr);
        objArr[i] = obj;
    }
}
