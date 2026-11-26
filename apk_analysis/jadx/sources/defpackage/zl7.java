package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public final class zl7<R> implements q21, cm7<R> {
    public static final /* synthetic */ long g = pz0.a.objectFieldOffset(zl7.class.getDeclaredField("state$volatile"));
    public static final /* synthetic */ int h = 0;
    public final o22 b;
    public Object d;
    private volatile /* synthetic */ Object state$volatile = dm7.a;
    public ArrayList c = new ArrayList(2);
    public int e = -1;
    public Object f = dm7.d;

    public final class a {
        public final Object a;
        public final dm3<Object, bm7<?>, Object, j59> b;
        public final dm3<Object, Object, Object, Object> c;
        public final Object d;
        public final pg8 e;
        public final dm3<bm7<?>, Object, Object, dm3<Throwable, Object, o22, j59>> f;
        public Object g;
        public int h = -1;

        public a(Object obj, dm3 dm3Var, dm3 dm3Var2, Object obj2, pg8 pg8Var, dm3 dm3Var3) {
            this.a = obj;
            this.b = dm3Var;
            this.c = dm3Var2;
            this.d = obj2;
            this.e = pg8Var;
            this.f = dm3Var3;
        }

        public final void a() {
            Object obj = this.g;
            if (obj instanceof hl7) {
                ((hl7) obj).h(this.h, zl7.this.b);
                return;
            }
            hp2 hp2Var = obj instanceof hp2 ? (hp2) obj : null;
            if (hp2Var != null) {
                hp2Var.dispose();
            }
        }
    }

    public zl7(o22 o22Var) {
        this.b = o22Var;
    }

    public static Object g(zl7 zl7Var, pg8 pg8Var) {
        return pz0.a.getObjectVolatile(zl7Var, g) instanceof a ? zl7Var.f(pg8Var) : zl7Var.h(pg8Var);
    }

    @Override // defpackage.lf9
    public final void a(hl7<?> hl7Var, int i) {
        this.d = hl7Var;
        this.e = i;
    }

    @Override // defpackage.q21
    public final void b(Throwable th) {
        zl7<R> zl7Var;
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = g;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (objectVolatile == dm7.b) {
                return;
            }
            while (true) {
                Unsafe unsafe2 = pz0.a;
                zl7Var = this;
                if (unsafe2.compareAndSwapObject(zl7Var, g, objectVolatile, dm7.c)) {
                    ArrayList arrayList = zl7Var.c;
                    if (arrayList == null) {
                        return;
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((a) it.next()).a();
                    }
                    zl7Var.f = dm7.d;
                    zl7Var.c = null;
                    return;
                }
                if (unsafe2.getObjectVolatile(zl7Var, j) != objectVolatile) {
                    break;
                } else {
                    this = zl7Var;
                }
            }
            this = zl7Var;
        }
    }

    @Override // defpackage.bm7
    public final void c(hp2 hp2Var) {
        this.d = hp2Var;
    }

    @Override // defpackage.bm7
    public final void d(Object obj) {
        this.f = obj;
    }

    @Override // defpackage.bm7
    public final boolean e(Object obj, Object obj2) {
        return m(obj, obj2) == 0;
    }

    public final Object f(f02 f02Var) {
        Unsafe unsafe = pz0.a;
        long j = g;
        Object objectVolatile = unsafe.getObjectVolatile(this, j);
        objectVolatile.getClass();
        a aVar = (a) objectVolatile;
        Object obj = aVar.d;
        Object obj2 = this.f;
        ArrayList<a> arrayList = this.c;
        if (arrayList != null) {
            for (a aVar2 : arrayList) {
                if (aVar2 != aVar) {
                    aVar2.a();
                }
            }
            pz0.a.putObjectVolatile(this, j, dm7.b);
            this.f = dm7.d;
            this.c = null;
        }
        Object objInvoke = aVar.c.invoke(aVar.a, obj, obj2);
        b32 b32Var = aVar.e;
        return obj == dm7.e ? ((nl3) b32Var).invoke(f02Var) : ((bm3) b32Var).invoke(objInvoke, f02Var);
    }

    @Override // defpackage.bm7
    public final o22 getContext() {
        return this.b;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object h(f02 f02Var) throws Throwable {
        am7 am7Var;
        c31 c31Var;
        Unsafe unsafe;
        if (f02Var instanceof am7) {
            am7Var = (am7) f02Var;
            int i = am7Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                am7Var.n = i - Integer.MIN_VALUE;
            } else {
                am7Var = new am7(this, f02Var);
            }
        } else {
            am7Var = new am7(this, f02Var);
        }
        am7 am7Var2 = am7Var;
        Object obj = am7Var2.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = am7Var2.n;
        if (i2 == 0) {
            r57.b(obj);
            am7Var2.n = 1;
            c31 c31Var2 = new c31(1, zya.b(am7Var2));
            c31Var2.u();
            loop0: while (true) {
                Unsafe unsafe2 = pz0.a;
                long j = g;
                Object objectVolatile = unsafe2.getObjectVolatile(this, j);
                c31 c31Var3 = c31Var2;
                bh8 bh8Var = dm7.a;
                if (objectVolatile == bh8Var) {
                    c31 c31Var4 = c31Var3;
                    while (true) {
                        Unsafe unsafe3 = pz0.a;
                        c31Var = c31Var4;
                        if (unsafe3.compareAndSwapObject(this, g, objectVolatile, c31Var4)) {
                            c31Var.w(this);
                            break loop0;
                        }
                        if (unsafe3.getObjectVolatile(this, j) != objectVolatile) {
                            break;
                        }
                        c31Var4 = c31Var;
                    }
                    c31Var2 = c31Var;
                } else {
                    c31Var = c31Var3;
                    if (!(objectVolatile instanceof List)) {
                        if (!(objectVolatile instanceof a)) {
                            ah.f(ad2.b(objectVolatile, "unexpected state: "));
                            return null;
                        }
                        j59 j59Var = j59.a;
                        a aVar = (a) objectVolatile;
                        Object obj2 = this.f;
                        dm3<bm7<?>, Object, Object, dm3<Throwable, Object, o22, j59>> dm3Var = aVar.f;
                        c31Var.q(j59Var, dm3Var != null ? dm3Var.invoke(this, aVar.d, obj2) : null);
                        break;
                    }
                    do {
                        unsafe = pz0.a;
                        if (unsafe.compareAndSwapObject(this, g, objectVolatile, bh8Var)) {
                            Iterator it = ((Iterable) objectVolatile).iterator();
                            while (it.hasNext()) {
                                zl7<R>.a aVarI = i(it.next());
                                aVarI.getClass();
                                aVarI.g = null;
                                aVarI.h = -1;
                                l(aVarI, true);
                            }
                            break;
                        }
                    } while (unsafe.getObjectVolatile(this, j) == objectVolatile);
                    c31Var2 = c31Var;
                }
            }
            Object objS = c31Var.s();
            if (objS != a32.COROUTINE_SUSPENDED) {
                objS = j59.a;
            }
            if (objS != a32Var) {
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        am7Var2.n = 2;
        Object objF = f(am7Var2);
        return objF == a32Var ? a32Var : objF;
    }

    public final zl7<R>.a i(Object obj) {
        ArrayList arrayList = this.c;
        Object obj2 = null;
        if (arrayList == null) {
            return null;
        }
        for (Object obj3 : arrayList) {
            if (((a) obj3).a == obj) {
                obj2 = obj3;
                break;
            }
        }
        zl7<R>.a aVar = (a) obj2;
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalStateException(("Clause with object " + obj + " is not found").toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void j(vl7 vl7Var, nl3<? super e02<? super R>, ? extends Object> nl3Var) {
        Object objD = vl7Var.d();
        dm3<Object, bm7<?>, Object, j59> dm3VarC = vl7Var.c();
        dm3<Object, Object, Object, Object> dm3VarB = vl7Var.b();
        dm3<bm7<?>, Object, Object, dm3<Throwable, Object, o22, j59>> dm3VarA = vl7Var.a();
        l(new a(objD, dm3VarC, dm3VarB, dm7.e, (pg8) nl3Var, dm3VarA), false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <Q> void k(wl7 wl7Var, bm3<? super Q, ? super e02<? super R>, ? extends Object> bm3Var) {
        l(new a(wl7Var.d(), wl7Var.c(), wl7Var.b(), null, (pg8) bm3Var, wl7Var.a()), false);
    }

    public final void l(zl7<R>.a aVar, boolean z) {
        Object obj = aVar.a;
        Unsafe unsafe = pz0.a;
        long j = g;
        if (unsafe.getObjectVolatile(this, j) instanceof a) {
            return;
        }
        if (!z) {
            ArrayList arrayList = this.c;
            arrayList.getClass();
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (((a) it.next()).a == obj) {
                        vh.e(obj, "Cannot use select clauses on the same object: ");
                        return;
                    }
                }
            }
        }
        aVar.b.invoke(obj, this, aVar.d);
        if (this.f != dm7.d) {
            pz0.a.putObjectVolatile(this, j, aVar);
            return;
        }
        if (!z) {
            ArrayList arrayList2 = this.c;
            arrayList2.getClass();
            arrayList2.add(aVar);
        }
        aVar.g = this.d;
        aVar.h = this.e;
        this.d = null;
        this.e = -1;
    }

    public final int m(Object obj, Object obj2) {
        zl7<R> zl7Var;
        Unsafe unsafe;
        Unsafe unsafe2;
        while (true) {
            Unsafe unsafe3 = pz0.a;
            long j = g;
            Object objectVolatile = unsafe3.getObjectVolatile(this, j);
            if (objectVolatile instanceof a31) {
                zl7<R>.a aVarI = this.i(obj);
                if (aVarI != null) {
                    dm3<bm7<?>, Object, Object, dm3<Throwable, Object, o22, j59>> dm3Var = aVarI.f;
                    dm3<Throwable, Object, o22, j59> dm3VarInvoke = dm3Var != null ? dm3Var.invoke(this, aVarI.d, obj2) : null;
                    while (true) {
                        Unsafe unsafe4 = pz0.a;
                        zl7Var = this;
                        if (unsafe4.compareAndSwapObject(zl7Var, g, objectVolatile, aVarI)) {
                            a31 a31Var = (a31) objectVolatile;
                            zl7Var.f = obj2;
                            bh8 bh8VarK = a31Var.k(j59.a, dm3VarInvoke);
                            if (bh8VarK == null) {
                                zl7Var.f = dm7.d;
                                return 2;
                            }
                            a31Var.j(bh8VarK);
                            return 0;
                        }
                        if (unsafe4.getObjectVolatile(zl7Var, j) != objectVolatile) {
                            break;
                        }
                        this = zl7Var;
                    }
                } else {
                    continue;
                }
            } else {
                zl7Var = this;
                if (aa4.e(objectVolatile, dm7.b) || (objectVolatile instanceof a)) {
                    return 3;
                }
                if (aa4.e(objectVolatile, dm7.c)) {
                    return 2;
                }
                if (aa4.e(objectVolatile, dm7.a)) {
                    List listH = u96.h(obj);
                    do {
                        unsafe2 = pz0.a;
                        if (unsafe2.compareAndSwapObject(zl7Var, g, objectVolatile, listH)) {
                            return 1;
                        }
                    } while (unsafe2.getObjectVolatile(zl7Var, j) == objectVolatile);
                } else {
                    if (!(objectVolatile instanceof List)) {
                        ah.f(ad2.b(objectVolatile, "Unexpected state: "));
                        return 0;
                    }
                    ArrayList arrayListI0 = qn1.i0(obj, (Collection) objectVolatile);
                    do {
                        unsafe = pz0.a;
                        if (unsafe.compareAndSwapObject(zl7Var, g, objectVolatile, arrayListI0)) {
                            return 1;
                        }
                    } while (unsafe.getObjectVolatile(zl7Var, j) == objectVolatile);
                }
            }
            this = zl7Var;
        }
    }
}
