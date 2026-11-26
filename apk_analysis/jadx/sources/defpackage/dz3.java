package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class dz3<ResponseT, ReturnT> extends uq7<ReturnT> {
    public final m37 a;
    public final okhttp3.a.InterfaceC0310a b;
    public final i02<b57, ResponseT> c;

    public static final class a<ResponseT, ReturnT> extends dz3<ResponseT, ReturnT> {
        public final gy0<ResponseT, ReturnT> d;

        public a(m37 m37Var, okhttp3.a.InterfaceC0310a interfaceC0310a, i02<b57, ResponseT> i02Var, gy0<ResponseT, ReturnT> gy0Var) {
            super(m37Var, interfaceC0310a, i02Var);
            this.d = gy0Var;
        }

        @Override // defpackage.dz3
        public final Object c(gv5 gv5Var, Object[] objArr) {
            return this.d.b(gv5Var);
        }
    }

    public static final class b<ResponseT> extends dz3<ResponseT, Object> {
        public final gy0<ResponseT, fy0<ResponseT>> d;
        public final boolean e;

        public b(m37 m37Var, okhttp3.a.InterfaceC0310a interfaceC0310a, i02 i02Var, gy0 gy0Var, boolean z) {
            super(m37Var, interfaceC0310a, i02Var);
            this.d = gy0Var;
            this.e = z;
        }

        @Override // defpackage.dz3
        public final Object c(gv5 gv5Var, Object[] objArr) {
            fy0 fy0Var = (fy0) this.d.b(gv5Var);
            e02 e02Var = (e02) objArr[objArr.length - 1];
            try {
                try {
                    if (!this.e) {
                        return qg4.a(fy0Var, e02Var);
                    }
                    try {
                        fy0Var.getClass();
                        return qg4.b(fy0Var, e02Var);
                    } catch (LinkageError e) {
                        throw e;
                    } catch (ThreadDeath e2) {
                        throw e2;
                    }
                } catch (Throwable th) {
                    return qg4.c(th, e02Var);
                }
            } catch (LinkageError | ThreadDeath | VirtualMachineError e3) {
                throw e3;
            }
        }
    }

    public static final class c<ResponseT> extends dz3<ResponseT, Object> {
        public final gy0<ResponseT, fy0<ResponseT>> d;

        public c(m37 m37Var, okhttp3.a.InterfaceC0310a interfaceC0310a, i02<b57, ResponseT> i02Var, gy0<ResponseT, fy0<ResponseT>> gy0Var) {
            super(m37Var, interfaceC0310a, i02Var);
            this.d = gy0Var;
        }

        @Override // defpackage.dz3
        public final Object c(gv5 gv5Var, Object[] objArr) throws Throwable {
            fy0 fy0Var = (fy0) this.d.b(gv5Var);
            e02 e02Var = (e02) objArr[objArr.length - 1];
            try {
                c31 c31Var = new c31(1, zya.b(e02Var));
                c31Var.u();
                c31Var.n(new rg4(fy0Var));
                fy0Var.o(new sg4(c31Var));
                Object objS = c31Var.s();
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                return objS;
            } catch (Exception e) {
                return qg4.c(e, e02Var);
            }
        }
    }

    public dz3(m37 m37Var, okhttp3.a.InterfaceC0310a interfaceC0310a, i02<b57, ResponseT> i02Var) {
        this.a = m37Var;
        this.b = interfaceC0310a;
        this.c = i02Var;
    }

    @Override // defpackage.uq7
    public final ReturnT a(Object obj, Object[] objArr) {
        return (ReturnT) c(new gv5(this.a, obj, objArr, this.b, this.c), objArr);
    }

    public abstract Object c(gv5 gv5Var, Object[] objArr);
}
