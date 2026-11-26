package com.google.protobuf;

import defpackage.fx0;
import defpackage.oo4;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class g0 {
    public static final Class<?> a;
    public static final j0<?, ?> b;
    public static final l0 c;

    static {
        Class<?> cls;
        Class<?> cls2;
        j0<?, ?> j0Var = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        a = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                j0Var = (j0) cls2.getConstructor(null).newInstance(null);
            } catch (Throwable unused3) {
            }
        }
        b = j0Var;
        c = new l0();
    }

    public static void A(int i, List<Long> list, n0 n0Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream codedOutputStream = ((h) n0Var).a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream.k0(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        codedOutputStream.u0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).getClass();
            i3 += 8;
        }
        codedOutputStream.w0(i3);
        while (i2 < list.size()) {
            codedOutputStream.l0(list.get(i2).longValue());
            i2++;
        }
    }

    public static void B(int i, List<Integer> list, n0 n0Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream codedOutputStream = ((h) n0Var).a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                int iIntValue = list.get(i2).intValue();
                codedOutputStream.v0(i, (iIntValue >> 31) ^ (iIntValue << 1));
                i2++;
            }
            return;
        }
        codedOutputStream.u0(i, 2);
        int iZ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            int iIntValue2 = list.get(i3).intValue();
            iZ += CodedOutputStream.Z((iIntValue2 >> 31) ^ (iIntValue2 << 1));
        }
        codedOutputStream.w0(iZ);
        while (i2 < list.size()) {
            int iIntValue3 = list.get(i2).intValue();
            codedOutputStream.w0((iIntValue3 >> 31) ^ (iIntValue3 << 1));
            i2++;
        }
    }

    public static void C(int i, List<Long> list, n0 n0Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream codedOutputStream = ((h) n0Var).a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                long jLongValue = list.get(i2).longValue();
                codedOutputStream.x0(i, (jLongValue >> 63) ^ (jLongValue << 1));
                i2++;
            }
            return;
        }
        codedOutputStream.u0(i, 2);
        int iA0 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            long jLongValue2 = list.get(i3).longValue();
            iA0 += CodedOutputStream.a0((jLongValue2 >> 63) ^ (jLongValue2 << 1));
        }
        codedOutputStream.w0(iA0);
        while (i2 < list.size()) {
            long jLongValue3 = list.get(i2).longValue();
            codedOutputStream.y0((jLongValue3 >> 63) ^ (jLongValue3 << 1));
            i2++;
        }
    }

    public static void D(int i, List<String> list, n0 n0Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream codedOutputStream = ((h) n0Var).a;
        int i2 = 0;
        if (!(list instanceof oo4)) {
            while (i2 < list.size()) {
                codedOutputStream.s0(i, list.get(i2));
                i2++;
            }
            return;
        }
        oo4 oo4Var = (oo4) list;
        while (i2 < list.size()) {
            Object raw = oo4Var.getRaw(i2);
            if (raw instanceof String) {
                codedOutputStream.s0(i, (String) raw);
            } else {
                codedOutputStream.g0(i, (fx0) raw);
            }
            i2++;
        }
    }

    public static void E(int i, List<Integer> list, n0 n0Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream codedOutputStream = ((h) n0Var).a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream.v0(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        codedOutputStream.u0(i, 2);
        int iZ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZ += CodedOutputStream.Z(list.get(i3).intValue());
        }
        codedOutputStream.w0(iZ);
        while (i2 < list.size()) {
            codedOutputStream.w0(list.get(i2).intValue());
            i2++;
        }
    }

    public static void F(int i, List<Long> list, n0 n0Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream codedOutputStream = ((h) n0Var).a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream.x0(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        codedOutputStream.u0(i, 2);
        int iA0 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iA0 += CodedOutputStream.a0(list.get(i3).longValue());
        }
        codedOutputStream.w0(iA0);
        while (i2 < list.size()) {
            codedOutputStream.y0(list.get(i2).longValue());
            i2++;
        }
    }

    public static int a(List<Integer> list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof p)) {
            int iV = 0;
            while (i < size) {
                iV += CodedOutputStream.V(list.get(i).intValue());
                i++;
            }
            return iV;
        }
        p pVar = (p) list;
        int iV2 = 0;
        while (i < size) {
            iV2 += CodedOutputStream.V(pVar.getInt(i));
            i++;
        }
        return iV2;
    }

    public static int b(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream.Y(i) + 4) * size;
    }

    public static int c(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream.Y(i) + 8) * size;
    }

    public static int d(List<Integer> list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof p)) {
            int iV = 0;
            while (i < size) {
                iV += CodedOutputStream.V(list.get(i).intValue());
                i++;
            }
            return iV;
        }
        p pVar = (p) list;
        int iV2 = 0;
        while (i < size) {
            iV2 += CodedOutputStream.V(pVar.getInt(i));
            i++;
        }
        return iV2;
    }

    public static int e(List<Long> list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof v)) {
            int iA0 = 0;
            while (i < size) {
                iA0 += CodedOutputStream.a0(list.get(i).longValue());
                i++;
            }
            return iA0;
        }
        v vVar = (v) list;
        int iA1 = 0;
        while (i < size) {
            vVar.b(i);
            iA1 += CodedOutputStream.a0(vVar.c[i]);
            i++;
        }
        return iA1;
    }

    public static int f(List<Integer> list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof p)) {
            int iZ = 0;
            while (i < size) {
                int iIntValue = list.get(i).intValue();
                iZ += CodedOutputStream.Z((iIntValue >> 31) ^ (iIntValue << 1));
                i++;
            }
            return iZ;
        }
        p pVar = (p) list;
        int iZ2 = 0;
        while (i < size) {
            int i2 = pVar.getInt(i);
            iZ2 += CodedOutputStream.Z((i2 >> 31) ^ (i2 << 1));
            i++;
        }
        return iZ2;
    }

    public static int g(List<Long> list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof v)) {
            int iA0 = 0;
            while (i < size) {
                long jLongValue = list.get(i).longValue();
                iA0 += CodedOutputStream.a0((jLongValue >> 63) ^ (jLongValue << 1));
                i++;
            }
            return iA0;
        }
        v vVar = (v) list;
        int iA1 = 0;
        while (i < size) {
            vVar.b(i);
            long j = vVar.c[i];
            iA1 += CodedOutputStream.a0((j >> 63) ^ (j << 1));
            i++;
        }
        return iA1;
    }

    public static int h(List<Integer> list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof p)) {
            int iZ = 0;
            while (i < size) {
                iZ += CodedOutputStream.Z(list.get(i).intValue());
                i++;
            }
            return iZ;
        }
        p pVar = (p) list;
        int iZ2 = 0;
        while (i < size) {
            iZ2 += CodedOutputStream.Z(pVar.getInt(i));
            i++;
        }
        return iZ2;
    }

    public static int i(List<Long> list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof v)) {
            int iA0 = 0;
            while (i < size) {
                iA0 += CodedOutputStream.a0(list.get(i).longValue());
                i++;
            }
            return iA0;
        }
        v vVar = (v) list;
        int iA1 = 0;
        while (i < size) {
            vVar.b(i);
            iA1 += CodedOutputStream.a0(vVar.c[i]);
            i++;
        }
        return iA1;
    }

    public static Object j(Object obj, int i, AbstractList abstractList, q.d dVar, Object obj2, j0 j0Var) {
        if (dVar == null) {
            return obj2;
        }
        int size = abstractList.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Integer num = (Integer) abstractList.get(i3);
            int iIntValue = num.intValue();
            if (dVar.findValueByNumber(iIntValue) != null) {
                if (i3 != i2) {
                    abstractList.set(i2, num);
                }
                i2++;
            } else {
                obj2 = n(obj, i, iIntValue, obj2, j0Var);
            }
        }
        if (i2 != size) {
            abstractList.subList(i2, size).clear();
        }
        return obj2;
    }

    public static <UT, UB> UB k(Object obj, int i, List<Integer> list, q.e eVar, UB ub, j0<UT, UB> j0Var) {
        if (eVar == null) {
            return ub;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                if (!eVar.isInRange(iIntValue)) {
                    ub = (UB) n(obj, i, iIntValue, ub, j0Var);
                    it.remove();
                }
            }
            return ub;
        }
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Integer num = list.get(i3);
            int iIntValue2 = num.intValue();
            if (eVar.isInRange(iIntValue2)) {
                if (i3 != i2) {
                    list.set(i2, num);
                }
                i2++;
            } else {
                ub = (UB) n(obj, i, iIntValue2, ub, j0Var);
            }
        }
        if (i2 != size) {
            list.subList(i2, size).clear();
        }
        return ub;
    }

    public static <T, FT extends m.b<FT>> void l(k<FT> kVar, T t, T t2) {
        h0 h0Var = kVar.c(t2).a;
        if (h0Var.isEmpty()) {
            return;
        }
        m<T> mVarD = kVar.d(t);
        mVarD.getClass();
        for (int i = 0; i < h0Var.c.size(); i++) {
            mVarD.l(h0Var.c(i));
        }
        Iterator<Map.Entry<Object, Object>> it = h0Var.d().iterator();
        while (it.hasNext()) {
            mVarD.l(it.next());
        }
    }

    public static boolean m(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static <UT, UB> UB n(Object obj, int i, int i2, UB ub, j0<UT, UB> j0Var) {
        if (ub == null) {
            ub = (UB) j0Var.f(obj);
        }
        j0Var.e(ub, i, i2);
        return ub;
    }

    public static void o(int i, List<Boolean> list, n0 n0Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream codedOutputStream = ((h) n0Var).a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream.e0(i, list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        codedOutputStream.u0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).getClass();
            i3++;
        }
        codedOutputStream.w0(i3);
        while (i2 < list.size()) {
            codedOutputStream.d0(list.get(i2).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static void p(int i, List<fx0> list, n0 n0Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        h hVar = (h) n0Var;
        hVar.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            hVar.a.g0(i, list.get(i2));
        }
    }

    public static void q(int i, List<Double> list, n0 n0Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream codedOutputStream = ((h) n0Var).a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                double dDoubleValue = list.get(i2).doubleValue();
                codedOutputStream.getClass();
                codedOutputStream.k0(i, Double.doubleToRawLongBits(dDoubleValue));
                i2++;
            }
            return;
        }
        codedOutputStream.u0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).getClass();
            i3 += 8;
        }
        codedOutputStream.w0(i3);
        while (i2 < list.size()) {
            codedOutputStream.l0(Double.doubleToRawLongBits(list.get(i2).doubleValue()));
            i2++;
        }
    }

    public static void r(int i, List<Integer> list, n0 n0Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream codedOutputStream = ((h) n0Var).a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream.m0(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        codedOutputStream.u0(i, 2);
        int iV = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iV += CodedOutputStream.V(list.get(i3).intValue());
        }
        codedOutputStream.w0(iV);
        while (i2 < list.size()) {
            codedOutputStream.n0(list.get(i2).intValue());
            i2++;
        }
    }

    public static void s(int i, List<Integer> list, n0 n0Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream codedOutputStream = ((h) n0Var).a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream.i0(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        codedOutputStream.u0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).getClass();
            i3 += 4;
        }
        codedOutputStream.w0(i3);
        while (i2 < list.size()) {
            codedOutputStream.j0(list.get(i2).intValue());
            i2++;
        }
    }

    public static void t(int i, List<Long> list, n0 n0Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream codedOutputStream = ((h) n0Var).a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream.k0(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        codedOutputStream.u0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).getClass();
            i3 += 8;
        }
        codedOutputStream.w0(i3);
        while (i2 < list.size()) {
            codedOutputStream.l0(list.get(i2).longValue());
            i2++;
        }
    }

    public static void u(int i, List<Float> list, n0 n0Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream codedOutputStream = ((h) n0Var).a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                float fFloatValue = list.get(i2).floatValue();
                codedOutputStream.getClass();
                codedOutputStream.i0(i, Float.floatToRawIntBits(fFloatValue));
                i2++;
            }
            return;
        }
        codedOutputStream.u0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).getClass();
            i3 += 4;
        }
        codedOutputStream.w0(i3);
        while (i2 < list.size()) {
            codedOutputStream.j0(Float.floatToRawIntBits(list.get(i2).floatValue()));
            i2++;
        }
    }

    public static void v(int i, List<?> list, n0 n0Var, f0 f0Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        h hVar = (h) n0Var;
        hVar.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            hVar.d(i, list.get(i2), f0Var);
        }
    }

    public static void w(int i, List<Integer> list, n0 n0Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream codedOutputStream = ((h) n0Var).a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream.m0(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        codedOutputStream.u0(i, 2);
        int iV = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iV += CodedOutputStream.V(list.get(i3).intValue());
        }
        codedOutputStream.w0(iV);
        while (i2 < list.size()) {
            codedOutputStream.n0(list.get(i2).intValue());
            i2++;
        }
    }

    public static void x(int i, List<Long> list, n0 n0Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream codedOutputStream = ((h) n0Var).a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream.x0(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        codedOutputStream.u0(i, 2);
        int iA0 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iA0 += CodedOutputStream.a0(list.get(i3).longValue());
        }
        codedOutputStream.w0(iA0);
        while (i2 < list.size()) {
            codedOutputStream.y0(list.get(i2).longValue());
            i2++;
        }
    }

    public static void y(int i, List<?> list, n0 n0Var, f0 f0Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        h hVar = (h) n0Var;
        hVar.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            hVar.g(i, list.get(i2), f0Var);
        }
    }

    public static void z(int i, List<Integer> list, n0 n0Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream codedOutputStream = ((h) n0Var).a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream.i0(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        codedOutputStream.u0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).getClass();
            i3 += 4;
        }
        codedOutputStream.w0(i3);
        while (i2 < list.size()) {
            codedOutputStream.j0(list.get(i2).intValue());
            i2++;
        }
    }
}
