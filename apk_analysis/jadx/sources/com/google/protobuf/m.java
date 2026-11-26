package com.google.protobuf;

import com.google.protobuf.m.b;
import defpackage.ej0;
import defpackage.fg;
import defpackage.fx0;
import defpackage.ha5;
import defpackage.n7;
import defpackage.nz0;
import defpackage.ui9;
import defpackage.vi9;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public final class m<T extends b<T>> {
    public static final m d = new m(0);
    public final h0 a;
    public boolean b;
    public boolean c;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[ui9.values().length];
            b = iArr;
            try {
                iArr[ui9.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[ui9.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[ui9.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[ui9.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[ui9.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[ui9.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                b[ui9.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                b[ui9.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                b[ui9.GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                b[ui9.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                b[ui9.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                b[ui9.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                b[ui9.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                b[ui9.SFIXED32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                b[ui9.SFIXED64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                b[ui9.SINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                b[ui9.SINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                b[ui9.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[vi9.values().length];
            a = iArr2;
            try {
                iArr2[vi9.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                a[vi9.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                a[vi9.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                a[vi9.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                a[vi9.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                a[vi9.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                a[vi9.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                a[vi9.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                a[vi9.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public interface b<T extends b<T>> extends Comparable<T> {
        o.a b(a0.a aVar, a0 a0Var);

        vi9 getLiteJavaType();

        ui9 getLiteType();

        int getNumber();

        boolean isPacked();

        boolean isRepeated();
    }

    public m(int i) {
        int i2 = i0.i;
        this.a = new h0(0);
        k();
        k();
    }

    public static int c(ui9 ui9Var, int i, Object obj) {
        int iY = CodedOutputStream.Y(i);
        if (ui9Var == ui9.GROUP) {
            iY *= 2;
        }
        return d(ui9Var, obj) + iY;
    }

    public static int d(ui9 ui9Var, Object obj) {
        int serializedSize;
        int iZ;
        switch (a.b[ui9Var.ordinal()]) {
            case 1:
                ((Double) obj).getClass();
                Logger logger = CodedOutputStream.p;
                return 8;
            case 2:
                ((Float) obj).getClass();
                Logger logger2 = CodedOutputStream.p;
                return 4;
            case 3:
                return CodedOutputStream.a0(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.a0(((Long) obj).longValue());
            case 5:
                return CodedOutputStream.V(((Integer) obj).intValue());
            case 6:
                ((Long) obj).getClass();
                Logger logger3 = CodedOutputStream.p;
                return 8;
            case 7:
                ((Integer) obj).getClass();
                Logger logger4 = CodedOutputStream.p;
                return 4;
            case 8:
                ((Boolean) obj).getClass();
                Logger logger5 = CodedOutputStream.p;
                return 1;
            case 9:
                Logger logger6 = CodedOutputStream.p;
                return ((a0) obj).getSerializedSize();
            case 10:
                if (obj instanceof r) {
                    return CodedOutputStream.W((r) obj);
                }
                Logger logger7 = CodedOutputStream.p;
                serializedSize = ((a0) obj).getSerializedSize();
                iZ = CodedOutputStream.Z(serializedSize);
                break;
            case 11:
                if (!(obj instanceof fx0)) {
                    return CodedOutputStream.X((String) obj);
                }
                Logger logger8 = CodedOutputStream.p;
                serializedSize = ((fx0) obj).size();
                iZ = CodedOutputStream.Z(serializedSize);
                break;
                break;
            case 12:
                if (!(obj instanceof fx0)) {
                    Logger logger9 = CodedOutputStream.p;
                    serializedSize = ((byte[]) obj).length;
                    iZ = CodedOutputStream.Z(serializedSize);
                } else {
                    Logger logger10 = CodedOutputStream.p;
                    serializedSize = ((fx0) obj).size();
                    iZ = CodedOutputStream.Z(serializedSize);
                }
                break;
            case 13:
                return CodedOutputStream.Z(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).getClass();
                Logger logger11 = CodedOutputStream.p;
                return 4;
            case 15:
                ((Long) obj).getClass();
                Logger logger12 = CodedOutputStream.p;
                return 8;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                return CodedOutputStream.Z((iIntValue >> 31) ^ (iIntValue << 1));
            case 17:
                long jLongValue = ((Long) obj).longValue();
                return CodedOutputStream.a0((jLongValue >> 63) ^ (jLongValue << 1));
            case 18:
                return obj instanceof q.c ? CodedOutputStream.V(((q.c) obj).getNumber()) : CodedOutputStream.V(((Integer) obj).intValue());
            default:
                n7.g("There is no way to get here, but the compiler thinks otherwise.");
                return 0;
        }
        return iZ + serializedSize;
    }

    public static int e(b<?> bVar, Object obj) {
        ui9 liteType = bVar.getLiteType();
        int number = bVar.getNumber();
        if (!bVar.isRepeated()) {
            return c(liteType, number, obj);
        }
        List list = (List) obj;
        int iC = 0;
        if (!bVar.isPacked()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                iC += c(liteType, number, it.next());
            }
            return iC;
        }
        if (list.isEmpty()) {
            return 0;
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            iC += d(liteType, it2.next());
        }
        return CodedOutputStream.Z(iC) + CodedOutputStream.Y(number) + iC;
    }

    public static int g(Map.Entry entry) {
        int iY = CodedOutputStream.Y(3);
        int iY2 = CodedOutputStream.Y(2);
        int iY3 = CodedOutputStream.Y(1);
        b bVar = (b) entry.getKey();
        Object value = entry.getValue();
        if (bVar.getLiteJavaType() != vi9.MESSAGE || bVar.isRepeated() || bVar.isPacked()) {
            return e(bVar, value);
        }
        if (value instanceof r) {
            int iZ = CodedOutputStream.Z(((b) entry.getKey()).getNumber()) + iY2;
            return CodedOutputStream.W((r) value) + iY + iZ + (iY3 * 2);
        }
        int iZ2 = CodedOutputStream.Z(((b) entry.getKey()).getNumber()) + iY2;
        int serializedSize = ((a0) value).getSerializedSize();
        return ej0.c(serializedSize, serializedSize, iY, iZ2 + (iY3 * 2));
    }

    public static <T extends b<T>> boolean i(Map.Entry<T, Object> entry) {
        boolean zIsInitialized;
        T key = entry.getKey();
        if (key.getLiteJavaType() == vi9.MESSAGE) {
            if (!key.isRepeated()) {
                Object value = entry.getValue();
                if (value instanceof ha5) {
                    return ((ha5) value).isInitialized();
                }
                if (value instanceof r) {
                    return true;
                }
                fg.c("Wrong object type used with protocol message reflection.");
                return false;
            }
            for (Object obj : (List) entry.getValue()) {
                if (obj instanceof ha5) {
                    zIsInitialized = ((ha5) obj).isInitialized();
                } else {
                    if (!(obj instanceof r)) {
                        fg.c("Wrong object type used with protocol message reflection.");
                        return false;
                    }
                    zIsInitialized = true;
                }
                if (!zIsInitialized) {
                    return false;
                }
            }
        }
        return true;
    }

    public static void n(b bVar, Object obj) {
        ui9 liteType = bVar.getLiteType();
        Charset charset = q.a;
        obj.getClass();
        boolean z = true;
        switch (a.a[liteType.a().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                break;
            case 2:
                z = obj instanceof Long;
                break;
            case 3:
                z = obj instanceof Float;
                break;
            case 4:
                z = obj instanceof Double;
                break;
            case 5:
                z = obj instanceof Boolean;
                break;
            case 6:
                z = obj instanceof String;
                break;
            case 7:
                if (!(obj instanceof fx0) && !(obj instanceof byte[])) {
                    z = false;
                }
                break;
            case 8:
                if (!(obj instanceof Integer) && !(obj instanceof q.c)) {
                    z = false;
                }
                break;
            case 9:
                if (!(obj instanceof a0) && !(obj instanceof r)) {
                    z = false;
                }
                break;
            default:
                z = false;
                break;
        }
        if (z) {
            return;
        }
        nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(bVar.getNumber()), bVar.getLiteType().a(), obj.getClass().getName()});
    }

    public static void o(CodedOutputStream codedOutputStream, ui9 ui9Var, int i, Object obj) {
        if (ui9Var == ui9.GROUP) {
            codedOutputStream.u0(i, 3);
            ((a0) obj).writeTo(codedOutputStream);
            codedOutputStream.u0(i, 4);
        }
        codedOutputStream.u0(i, ui9Var.d());
        switch (a.b[ui9Var.ordinal()]) {
            case 1:
                codedOutputStream.l0(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 2:
                codedOutputStream.j0(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 3:
                codedOutputStream.y0(((Long) obj).longValue());
                break;
            case 4:
                codedOutputStream.y0(((Long) obj).longValue());
                break;
            case 5:
                codedOutputStream.n0(((Integer) obj).intValue());
                break;
            case 6:
                codedOutputStream.l0(((Long) obj).longValue());
                break;
            case 7:
                codedOutputStream.j0(((Integer) obj).intValue());
                break;
            case 8:
                codedOutputStream.d0(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 9:
                ((a0) obj).writeTo(codedOutputStream);
                break;
            case 10:
                codedOutputStream.p0((a0) obj);
                break;
            case 11:
                if (!(obj instanceof fx0)) {
                    codedOutputStream.t0((String) obj);
                } else {
                    codedOutputStream.h0((fx0) obj);
                }
                break;
            case 12:
                if (!(obj instanceof fx0)) {
                    byte[] bArr = (byte[]) obj;
                    codedOutputStream.f0(bArr.length, bArr);
                } else {
                    codedOutputStream.h0((fx0) obj);
                }
                break;
            case 13:
                codedOutputStream.w0(((Integer) obj).intValue());
                break;
            case 14:
                codedOutputStream.j0(((Integer) obj).intValue());
                break;
            case 15:
                codedOutputStream.l0(((Long) obj).longValue());
                break;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                codedOutputStream.w0((iIntValue >> 31) ^ (iIntValue << 1));
                break;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                codedOutputStream.y0((jLongValue >> 63) ^ (jLongValue << 1));
                break;
            case 18:
                if (!(obj instanceof q.c)) {
                    codedOutputStream.n0(((Integer) obj).intValue());
                } else {
                    codedOutputStream.n0(((q.c) obj).getNumber());
                }
                break;
        }
    }

    public final void a(T t, Object obj) {
        List arrayList;
        if (!t.isRepeated()) {
            fg.c("addRepeatedField() can only be called on repeated fields.");
            return;
        }
        n(t, obj);
        Object objF = f(t);
        if (objF == null) {
            arrayList = new ArrayList();
            this.a.h(t, arrayList);
        } else {
            arrayList = (List) objF;
        }
        arrayList.add(obj);
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final m<T> clone() {
        h0 h0Var;
        m<T> mVar = new m<>();
        int i = 0;
        while (true) {
            h0Var = this.a;
            if (i >= h0Var.c.size()) {
                break;
            }
            Map.Entry<Object, Object> entryC = h0Var.c(i);
            mVar.m((b) entryC.getKey(), entryC.getValue());
            i++;
        }
        for (Map.Entry<Object, Object> entry : h0Var.d()) {
            mVar.m((b) entry.getKey(), entry.getValue());
        }
        mVar.c = this.c;
        return mVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            return this.a.equals(((m) obj).a);
        }
        return false;
    }

    public final Object f(T t) {
        Object obj = this.a.get(t);
        return obj instanceof r ? ((r) obj).a(null) : obj;
    }

    public final boolean h() {
        int i = 0;
        while (true) {
            h0 h0Var = this.a;
            if (i >= h0Var.c.size()) {
                Iterator<Map.Entry<Object, Object>> it = h0Var.d().iterator();
                while (it.hasNext()) {
                    if (!i(it.next())) {
                        break;
                    }
                }
                return true;
            }
            if (!i(h0Var.c(i))) {
                break;
            }
            i++;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final Iterator<Map.Entry<T, Object>> j() {
        boolean z = this.c;
        h0 h0Var = this.a;
        return z ? new r.b(((i0.f) h0Var.entrySet()).iterator()) : ((i0.f) h0Var.entrySet()).iterator();
    }

    public final void k() {
        if (this.b) {
            return;
        }
        int i = 0;
        while (true) {
            h0 h0Var = this.a;
            if (i >= h0Var.c.size()) {
                h0Var.g();
                this.b = true;
                return;
            } else {
                Map.Entry<Object, Object> entryC = h0Var.c(i);
                if (entryC.getValue() instanceof o) {
                    ((o) entryC.getValue()).makeImmutable();
                }
                i++;
            }
        }
    }

    public final void l(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof r) {
            value = ((r) value).a(null);
        }
        boolean zIsRepeated = key.isRepeated();
        h0 h0Var = this.a;
        if (zIsRepeated) {
            Object objF = f(key);
            if (objF == null) {
                objF = new ArrayList();
            }
            for (Object obj : (List) value) {
                List list = (List) objF;
                if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    byte[] bArr2 = new byte[bArr.length];
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    obj = bArr2;
                }
                list.add(obj);
            }
            h0Var.h(key, objF);
            return;
        }
        if (key.getLiteJavaType() != vi9.MESSAGE) {
            if (value instanceof byte[]) {
                byte[] bArr3 = (byte[]) value;
                byte[] bArr4 = new byte[bArr3.length];
                System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
                value = bArr4;
            }
            h0Var.h(key, value);
            return;
        }
        Object objF2 = f(key);
        if (objF2 != null) {
            h0Var.h(key, key.b(((a0) objF2).toBuilder(), (a0) value).build());
            return;
        }
        if (value instanceof byte[]) {
            byte[] bArr5 = (byte[]) value;
            byte[] bArr6 = new byte[bArr5.length];
            System.arraycopy(bArr5, 0, bArr6, 0, bArr5.length);
            value = bArr6;
        }
        h0Var.h(key, value);
    }

    public final void m(T t, Object obj) {
        if (!t.isRepeated()) {
            n(t, obj);
        } else {
            if (!(obj instanceof List)) {
                fg.c("Wrong object type used with protocol message reflection.");
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                n(t, it.next());
            }
            obj = arrayList;
        }
        if (obj instanceof r) {
            this.c = true;
        }
        this.a.h(t, obj);
    }

    public m() {
        int i = i0.i;
        this.a = new h0(16);
    }
}
