package defpackage;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public class pu4 {
    public static final /* synthetic */ long b;
    public static final /* synthetic */ long c;
    public static final /* synthetic */ long d;
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    public static final /* synthetic */ class a extends zr6 {
        @Override // defpackage.zr6, defpackage.af4
        public final Object get() {
            return this.receiver.getClass().getSimpleName();
        }
    }

    static {
        Unsafe unsafe = pz0.a;
        b = unsafe.objectFieldOffset(pu4.class.getDeclaredField("_next$volatile"));
        c = unsafe.objectFieldOffset(pu4.class.getDeclaredField("_prev$volatile"));
        d = unsafe.objectFieldOffset(pu4.class.getDeclaredField("_removedRef$volatile"));
    }

    public final boolean c(pu4 pu4Var, int i) {
        pu4 pu4Var2;
        pu4 pu4Var3;
        while (true) {
            pu4 pu4VarH = this.h();
            if (pu4VarH instanceof br4) {
                return (((br4) pu4VarH).e & i) == 0 && pu4VarH.c(pu4Var, i);
            }
            Unsafe unsafe = pz0.a;
            unsafe.putObjectVolatile(pu4Var, c, pu4VarH);
            long j = b;
            unsafe.putObjectVolatile(pu4Var, j, this);
            while (true) {
                Unsafe unsafe2 = pz0.a;
                pu4Var2 = this;
                pu4Var3 = pu4Var;
                if (unsafe2.compareAndSwapObject(pu4VarH, b, pu4Var2, pu4Var3)) {
                    pu4Var3.e(pu4Var2);
                    return true;
                }
                if (unsafe2.getObjectVolatile(pu4VarH, j) != pu4Var2) {
                    break;
                }
                this = pu4Var2;
                pu4Var = pu4Var3;
            }
            this = pu4Var2;
            pu4Var = pu4Var3;
        }
    }

    public final pu4 d() {
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = c;
            pu4 pu4Var = (pu4) unsafe.getObjectVolatile(this, j);
            pu4 pu4Var2 = null;
            pu4 pu4Var3 = pu4Var;
            while (true) {
                if (pu4Var3 == null) {
                    throw new ClassCastException();
                }
                Unsafe unsafe2 = pz0.a;
                long j2 = b;
                Object objectVolatile = unsafe2.getObjectVolatile(pu4Var3, j2);
                if (objectVolatile == this) {
                    if (pu4Var != pu4Var3) {
                        while (true) {
                            Unsafe unsafe3 = pz0.a;
                            pu4 pu4Var4 = this;
                            boolean zCompareAndSwapObject = unsafe3.compareAndSwapObject(pu4Var4, c, pu4Var, pu4Var3);
                            pu4 pu4Var5 = pu4Var;
                            this = pu4Var4;
                            if (!zCompareAndSwapObject) {
                                if (unsafe3.getObjectVolatile(this, j) != pu4Var5) {
                                    break;
                                }
                                this = this;
                                pu4Var = pu4Var5;
                            }
                        }
                    }
                    return pu4Var3;
                }
                pu4Var = pu4Var;
                this = this;
                if (this.i()) {
                    return null;
                }
                if (!(objectVolatile instanceof b27)) {
                    objectVolatile.getClass();
                    pu4Var2 = pu4Var3;
                    pu4Var3 = (pu4) objectVolatile;
                } else if (pu4Var2 != null) {
                    pu4 pu4Var6 = ((b27) objectVolatile).a;
                    while (true) {
                        pu4 pu4Var7 = pu4Var3;
                        Unsafe unsafe4 = pz0.a;
                        boolean zCompareAndSwapObject2 = unsafe4.compareAndSwapObject(pu4Var2, b, pu4Var7, pu4Var6);
                        pu4Var3 = pu4Var7;
                        if (zCompareAndSwapObject2) {
                            pu4Var3 = pu4Var2;
                            pu4Var2 = null;
                            break;
                        }
                        if (unsafe4.getObjectVolatile(pu4Var2, j2) != pu4Var3) {
                            break;
                        }
                    }
                } else {
                    if (pu4Var3 == null) {
                        throw new ClassCastException();
                    }
                    pu4Var3 = (pu4) unsafe2.getObjectVolatile(pu4Var3, j);
                }
            }
            this = this;
        }
    }

    public final void e(pu4 pu4Var) {
        pu4 pu4Var2;
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = c;
            pu4 pu4Var3 = (pu4) unsafe.getObjectVolatile(pu4Var, j);
            if (this.f() != pu4Var) {
                return;
            }
            while (true) {
                Unsafe unsafe2 = pz0.a;
                pu4Var2 = this;
                pu4 pu4Var4 = pu4Var;
                if (unsafe2.compareAndSwapObject(pu4Var4, c, pu4Var3, pu4Var2)) {
                    if (pu4Var2.i()) {
                        pu4Var4.d();
                        return;
                    }
                    return;
                } else {
                    pu4Var = pu4Var4;
                    if (unsafe2.getObjectVolatile(pu4Var4, j) != pu4Var3) {
                        break;
                    } else {
                        this = pu4Var2;
                    }
                }
            }
            this = pu4Var2;
        }
    }

    public final Object f() {
        return pz0.a.getObjectVolatile(this, b);
    }

    public final pu4 g() {
        Object objF = f();
        b27 b27Var = objF instanceof b27 ? (b27) objF : null;
        if (b27Var != null) {
            return b27Var.a;
        }
        objF.getClass();
        return (pu4) objF;
    }

    public final pu4 h() {
        pu4 pu4VarD = d();
        if (pu4VarD != null) {
            return pu4VarD;
        }
        Unsafe unsafe = pz0.a;
        long j = c;
        Object objectVolatile = unsafe.getObjectVolatile(this, j);
        while (true) {
            pu4 pu4Var = (pu4) objectVolatile;
            if (!pu4Var.i()) {
                return pu4Var;
            }
            objectVolatile = pz0.a.getObjectVolatile(pu4Var, j);
        }
    }

    public boolean i() {
        return f() instanceof b27;
    }

    public String toString() {
        return new a(this, cd2.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", 1) + '@' + cd2.a(this);
    }
}
