package com.google.protobuf;

import defpackage.ah;
import defpackage.fx0;
import defpackage.qz0;
import defpackage.rs6;
import defpackage.ui9;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class l extends k<o.d> {

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ui9.values().length];
            a = iArr;
            try {
                iArr[ui9.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ui9.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[ui9.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[ui9.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[ui9.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[ui9.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[ui9.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[ui9.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[ui9.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[ui9.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[ui9.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[ui9.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[ui9.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[ui9.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[ui9.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[ui9.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[ui9.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                a[ui9.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    @Override // com.google.protobuf.k
    public final int a(Map.Entry<?, ?> entry) {
        return ((o.d) entry.getKey()).c;
    }

    @Override // com.google.protobuf.k
    public final o.e b(j jVar, a0 a0Var, int i) {
        return jVar.a.get(new j.a(i, a0Var));
    }

    @Override // com.google.protobuf.k
    public final m<o.d> c(Object obj) {
        return ((o.c) obj).extensions;
    }

    @Override // com.google.protobuf.k
    public final m<o.d> d(Object obj) {
        o.c cVar = (o.c) obj;
        m<o.d> mVar = cVar.extensions;
        if (!mVar.b) {
            return mVar;
        }
        m mVarClone = mVar.clone();
        cVar.extensions = mVarClone;
        return mVarClone;
    }

    @Override // com.google.protobuf.k
    public final boolean e(a0 a0Var) {
        return a0Var instanceof o.c;
    }

    @Override // com.google.protobuf.k
    public final void f(Object obj) {
        ((o.c) obj).extensions.k();
    }

    @Override // com.google.protobuf.k
    public final Object g(Object obj, g gVar, Object obj2, j jVar, m mVar, Object obj3, j0 j0Var) throws InvalidProtocolBufferException {
        Object objF;
        Object objJ;
        ArrayList arrayList;
        f fVar = gVar.a;
        o.e eVar = (o.e) obj2;
        o.d dVar = eVar.d;
        ui9 ui9Var = dVar.d;
        a0 a0Var = eVar.c;
        ui9 ui9Var2 = dVar.d;
        boolean z = dVar.e;
        int i = dVar.c;
        Object objValueOf = null;
        if (dVar.e && dVar.f) {
            switch (a.a[ui9Var.ordinal()]) {
                case 1:
                    objJ = obj3;
                    arrayList = new ArrayList();
                    gVar.g(arrayList);
                    break;
                case 2:
                    objJ = obj3;
                    arrayList = new ArrayList();
                    gVar.l(arrayList);
                    break;
                case 3:
                    objJ = obj3;
                    arrayList = new ArrayList();
                    gVar.n(arrayList);
                    break;
                case 4:
                    objJ = obj3;
                    arrayList = new ArrayList();
                    gVar.v(arrayList);
                    break;
                case 5:
                    objJ = obj3;
                    arrayList = new ArrayList();
                    gVar.m(arrayList);
                    break;
                case 6:
                    objJ = obj3;
                    arrayList = new ArrayList();
                    gVar.k(arrayList);
                    break;
                case 7:
                    objJ = obj3;
                    arrayList = new ArrayList();
                    gVar.j(arrayList);
                    break;
                case 8:
                    objJ = obj3;
                    arrayList = new ArrayList();
                    gVar.d(arrayList);
                    break;
                case 9:
                    objJ = obj3;
                    arrayList = new ArrayList();
                    gVar.u(arrayList);
                    break;
                case 10:
                    objJ = obj3;
                    arrayList = new ArrayList();
                    gVar.p(arrayList);
                    break;
                case 11:
                    objJ = obj3;
                    arrayList = new ArrayList();
                    gVar.q(arrayList);
                    break;
                case 12:
                    objJ = obj3;
                    arrayList = new ArrayList();
                    gVar.r(arrayList);
                    break;
                case 13:
                    objJ = obj3;
                    arrayList = new ArrayList();
                    gVar.s(arrayList);
                    break;
                case 14:
                    arrayList = new ArrayList();
                    gVar.h(arrayList);
                    objJ = g0.j(obj, i, arrayList, dVar.b, obj3, j0Var);
                    break;
                default:
                    qz0.i(ui9Var2, "Type cannot be packed: ");
                    return null;
            }
            mVar.m(dVar, arrayList);
            return objJ;
        }
        if (ui9Var != ui9.ENUM) {
            switch (a.a[ui9Var.ordinal()]) {
                case 1:
                    gVar.x(1);
                    objValueOf = Double.valueOf(fVar.l());
                    break;
                case 2:
                    gVar.x(5);
                    objValueOf = Float.valueOf(fVar.p());
                    break;
                case 3:
                    gVar.x(0);
                    objValueOf = Long.valueOf(fVar.r());
                    break;
                case 4:
                    gVar.x(0);
                    objValueOf = Long.valueOf(fVar.B());
                    break;
                case 5:
                    gVar.x(0);
                    objValueOf = Integer.valueOf(fVar.q());
                    break;
                case 6:
                    gVar.x(1);
                    objValueOf = Long.valueOf(fVar.o());
                    break;
                case 7:
                    gVar.x(5);
                    objValueOf = Integer.valueOf(fVar.n());
                    break;
                case 8:
                    gVar.x(0);
                    objValueOf = Boolean.valueOf(fVar.j());
                    break;
                case 9:
                    gVar.x(0);
                    objValueOf = Integer.valueOf(fVar.A());
                    break;
                case 10:
                    gVar.x(5);
                    objValueOf = Integer.valueOf(fVar.t());
                    break;
                case 11:
                    gVar.x(1);
                    objValueOf = Long.valueOf(fVar.u());
                    break;
                case 12:
                    gVar.x(0);
                    objValueOf = Integer.valueOf(fVar.v());
                    break;
                case 13:
                    gVar.x(0);
                    objValueOf = Long.valueOf(fVar.w());
                    break;
                case 14:
                    ah.f("Shouldn't reach here.");
                    return null;
                case 15:
                    objValueOf = gVar.e();
                    break;
                case 16:
                    gVar.x(2);
                    objValueOf = fVar.x();
                    break;
                case 17:
                    if (!z) {
                        Object objF2 = mVar.f(dVar);
                        if (objF2 instanceof o) {
                            rs6 rs6Var = rs6.c;
                            rs6Var.getClass();
                            f0 f0VarA = rs6Var.a(objF2.getClass());
                            if (!((o) objF2).isMutable()) {
                                Object objNewInstance = f0VarA.newInstance();
                                f0VarA.mergeFrom(objNewInstance, objF2);
                                mVar.m(dVar, objNewInstance);
                                objF2 = objNewInstance;
                            }
                            gVar.x(3);
                            gVar.b(objF2, f0VarA, jVar);
                            return obj3;
                        }
                    }
                    Class<?> cls = a0Var.getClass();
                    gVar.x(3);
                    f0 f0VarA2 = rs6.c.a(cls);
                    objValueOf = f0VarA2.newInstance();
                    gVar.b(objValueOf, f0VarA2, jVar);
                    f0VarA2.makeImmutable(objValueOf);
                    break;
                case 18:
                    if (!z) {
                        Object objF3 = mVar.f(dVar);
                        if (objF3 instanceof o) {
                            rs6 rs6Var2 = rs6.c;
                            rs6Var2.getClass();
                            f0 f0VarA3 = rs6Var2.a(objF3.getClass());
                            if (!((o) objF3).isMutable()) {
                                Object objNewInstance2 = f0VarA3.newInstance();
                                f0VarA3.mergeFrom(objNewInstance2, objF3);
                                mVar.m(dVar, objNewInstance2);
                                objF3 = objNewInstance2;
                            }
                            gVar.x(2);
                            gVar.c(objF3, f0VarA3, jVar);
                            return obj3;
                        }
                    }
                    objValueOf = gVar.o(a0Var.getClass(), jVar);
                    break;
            }
        } else {
            gVar.x(0);
            int iQ = fVar.q();
            if (dVar.b.findValueByNumber(iQ) == null) {
                return g0.n(obj, i, iQ, obj3, j0Var);
            }
            objValueOf = Integer.valueOf(iQ);
        }
        if (z) {
            mVar.a(dVar, objValueOf);
            return obj3;
        }
        int i2 = a.a[ui9Var2.ordinal()];
        if ((i2 == 17 || i2 == 18) && (objF = mVar.f(dVar)) != null) {
            objValueOf = ((a0) objF).toBuilder().mergeFrom((a0) objValueOf).buildPartial();
        }
        mVar.m(dVar, objValueOf);
        return obj3;
    }

    @Override // com.google.protobuf.k
    public final void h(g gVar, Object obj, j jVar, m mVar) throws InvalidProtocolBufferException {
        o.e eVar = (o.e) obj;
        mVar.m(eVar.d, gVar.o(eVar.c.getClass(), jVar));
    }

    @Override // com.google.protobuf.k
    public final void i(fx0 fx0Var, Object obj, j jVar, m<o.d> mVar) {
        o.e eVar = (o.e) obj;
        a0.a aVarNewBuilderForType = eVar.c.newBuilderForType();
        f fVarK = fx0Var.k();
        aVarNewBuilderForType.mergeFrom(fVarK, jVar);
        mVar.m(eVar.d, aVarNewBuilderForType.buildPartial());
        fVarK.a(0);
    }

    @Override // com.google.protobuf.k
    public final void j(n0 n0Var, Map.Entry<?, ?> entry) {
        o.d dVar = (o.d) entry.getKey();
        boolean z = dVar.e;
        ui9 ui9Var = dVar.d;
        boolean z2 = dVar.f;
        int i = dVar.c;
        if (z) {
            switch (a.a[ui9Var.ordinal()]) {
                case 1:
                    g0.q(i, (List) entry.getValue(), n0Var, z2);
                    break;
                case 2:
                    g0.u(i, (List) entry.getValue(), n0Var, z2);
                    break;
                case 3:
                    g0.x(i, (List) entry.getValue(), n0Var, z2);
                    break;
                case 4:
                    g0.F(i, (List) entry.getValue(), n0Var, z2);
                    break;
                case 5:
                    g0.w(i, (List) entry.getValue(), n0Var, z2);
                    break;
                case 6:
                    g0.t(i, (List) entry.getValue(), n0Var, z2);
                    break;
                case 7:
                    g0.s(i, (List) entry.getValue(), n0Var, z2);
                    break;
                case 8:
                    g0.o(i, (List) entry.getValue(), n0Var, z2);
                    break;
                case 9:
                    g0.E(i, (List) entry.getValue(), n0Var, z2);
                    break;
                case 10:
                    g0.z(i, (List) entry.getValue(), n0Var, z2);
                    break;
                case 11:
                    g0.A(i, (List) entry.getValue(), n0Var, z2);
                    break;
                case 12:
                    g0.B(i, (List) entry.getValue(), n0Var, z2);
                    break;
                case 13:
                    g0.C(i, (List) entry.getValue(), n0Var, z2);
                    break;
                case 14:
                    g0.w(i, (List) entry.getValue(), n0Var, z2);
                    break;
                case 15:
                    g0.p(i, (List) entry.getValue(), n0Var);
                    break;
                case 16:
                    g0.D(i, (List) entry.getValue(), n0Var);
                    break;
                case 17:
                    List list = (List) entry.getValue();
                    if (list != null && !list.isEmpty()) {
                        g0.v(i, (List) entry.getValue(), n0Var, rs6.c.a(list.get(0).getClass()));
                        break;
                    }
                    break;
                case 18:
                    List list2 = (List) entry.getValue();
                    if (list2 != null && !list2.isEmpty()) {
                        g0.y(i, (List) entry.getValue(), n0Var, rs6.c.a(list2.get(0).getClass()));
                        break;
                    }
                    break;
            }
        }
        switch (a.a[ui9Var.ordinal()]) {
            case 1:
                double dDoubleValue = ((Double) entry.getValue()).doubleValue();
                CodedOutputStream codedOutputStream = ((h) n0Var).a;
                codedOutputStream.getClass();
                codedOutputStream.k0(i, Double.doubleToRawLongBits(dDoubleValue));
                break;
            case 2:
                float fFloatValue = ((Float) entry.getValue()).floatValue();
                CodedOutputStream codedOutputStream2 = ((h) n0Var).a;
                codedOutputStream2.getClass();
                codedOutputStream2.i0(i, Float.floatToRawIntBits(fFloatValue));
                break;
            case 3:
                ((h) n0Var).f(i, ((Long) entry.getValue()).longValue());
                break;
            case 4:
                ((h) n0Var).a.x0(i, ((Long) entry.getValue()).longValue());
                break;
            case 5:
                ((h) n0Var).e(i, ((Integer) entry.getValue()).intValue());
                break;
            case 6:
                ((h) n0Var).c(i, ((Long) entry.getValue()).longValue());
                break;
            case 7:
                ((h) n0Var).b(i, ((Integer) entry.getValue()).intValue());
                break;
            case 8:
                ((h) n0Var).a.e0(i, ((Boolean) entry.getValue()).booleanValue());
                break;
            case 9:
                ((h) n0Var).a.v0(i, ((Integer) entry.getValue()).intValue());
                break;
            case 10:
                ((h) n0Var).a.i0(i, ((Integer) entry.getValue()).intValue());
                break;
            case 11:
                ((h) n0Var).a.k0(i, ((Long) entry.getValue()).longValue());
                break;
            case 12:
                int iIntValue = ((Integer) entry.getValue()).intValue();
                ((h) n0Var).a.v0(i, (iIntValue >> 31) ^ (iIntValue << 1));
                break;
            case 13:
                long jLongValue = ((Long) entry.getValue()).longValue();
                ((h) n0Var).a.x0(i, (jLongValue >> 63) ^ (jLongValue << 1));
                break;
            case 14:
                ((h) n0Var).e(i, ((Integer) entry.getValue()).intValue());
                break;
            case 15:
                ((h) n0Var).a(i, (fx0) entry.getValue());
                break;
            case 16:
                ((h) n0Var).a.s0(i, (String) entry.getValue());
                break;
            case 17:
                ((h) n0Var).d(i, entry.getValue(), rs6.c.a(entry.getValue().getClass()));
                break;
            case 18:
                ((h) n0Var).g(i, entry.getValue(), rs6.c.a(entry.getValue().getClass()));
                break;
        }
    }
}
