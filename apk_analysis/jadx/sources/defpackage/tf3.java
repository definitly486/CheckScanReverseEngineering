package defpackage;

import defpackage.pz3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class tf3<T extends pz3> {
    public final nl3<Integer, j59> a;
    public final y22 b;
    public final d<T> c;
    public final hd3<List<T>> d;
    public final z68 e;
    public boolean f;

    @bd2(c = "com.warefly.checkscan.util.paginators.FlowPaginator$1", f = "FlowPaginator.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<List<? extends T>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;
        public final /* synthetic */ tf3<T> m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(tf3<T> tf3Var, e02<? super a> e02Var) {
            super(2, e02Var);
            this.m = tf3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = new a(this.m, e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Object obj, e02<? super j59> e02Var) {
            return ((a) create((List) obj, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            tf3<T> tf3Var = this.m;
            d<T> dVar = tf3Var.c;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            List list = (List) this.l;
            if (list.isEmpty() && ((Number) tf3Var.e.getValue()).intValue() == 0) {
                dVar.b();
            } else if (!list.isEmpty()) {
                dVar.showData(list);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.util.paginators.FlowPaginator$2", f = "FlowPaginator.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements dm3<id3<? super List<? extends T>>, Throwable, e02<? super j59>, Object> {
        public /* synthetic */ Throwable l;
        public final /* synthetic */ tf3<T> m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(tf3<T> tf3Var, e02<? super b> e02Var) {
            super(3, e02Var);
            this.m = tf3Var;
        }

        @Override // defpackage.dm3
        public final Object invoke(Object obj, Throwable th, e02<? super j59> e02Var) {
            b bVar = new b(this.m, e02Var);
            bVar.l = th;
            return bVar.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            this.m.c.a(this.l);
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.util.paginators.FlowPaginator$4", f = "FlowPaginator.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<Integer, e02<? super j59>, Object> {
        public /* synthetic */ int l;
        public final /* synthetic */ tf3<T> m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(tf3<T> tf3Var, e02<? super c> e02Var) {
            super(2, e02Var);
            this.m = tf3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = new c(this.m, e02Var);
            cVar.l = ((Number) obj).intValue();
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Integer num, e02<? super j59> e02Var) {
            return ((c) create(Integer.valueOf(num.intValue()), e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            this.m.a.invoke(new Integer(this.l));
            return j59.a;
        }
    }

    public interface d<T> {
        void a(Throwable th);

        void b();

        void showData(List list);
    }

    @bd2(c = "com.warefly.checkscan.util.paginators.FlowPaginator$loadNewPage$1", f = "FlowPaginator.kt", l = {38}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ tf3<T> m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(tf3<T> tf3Var, e02<? super e> e02Var) {
            super(2, e02Var);
            this.m = tf3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new e(this.m, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((e) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            tf3<T> tf3Var = this.m;
            if (i == 0) {
                r57.b(obj);
                tf3Var.f = false;
                z68 z68Var = tf3Var.e;
                z68Var.k(null, new Integer(((Number) z68Var.getValue()).intValue() + 1));
                z68Var.setValue(z68Var.getValue());
                this.l = 1;
                if (yk2.b(200L, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            tf3Var.f = true;
            return j59.a;
        }
    }

    public static final class f implements hd3<Integer> {
        public final /* synthetic */ z68 b;

        public static final class a<T> implements id3 {
            public final /* synthetic */ id3 b;

            /* JADX INFO: renamed from: tf3$f$a$a, reason: collision with other inner class name */
            @bd2(c = "com.warefly.checkscan.util.paginators.FlowPaginator$special$$inlined$filter$1$2", f = "FlowPaginator.kt", l = {217}, m = "emit")
            public static final class C0336a extends f02 {
                public /* synthetic */ Object l;
                public int m;

                public C0336a(e02 e02Var) {
                    super(e02Var);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    this.l = obj;
                    this.m |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(id3 id3Var) {
                this.b = id3Var;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // defpackage.id3
            public final Object emit(Object obj, e02 e02Var) {
                C0336a c0336a;
                if (e02Var instanceof C0336a) {
                    c0336a = (C0336a) e02Var;
                    int i = c0336a.m;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        c0336a.m = i - Integer.MIN_VALUE;
                    } else {
                        c0336a = new C0336a(e02Var);
                    }
                } else {
                    c0336a = new C0336a(e02Var);
                }
                Object obj2 = c0336a.l;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = c0336a.m;
                if (i2 == 0) {
                    r57.b(obj2);
                    if (((Number) obj).intValue() != -1) {
                        c0336a.m = 1;
                        if (this.b.emit(obj, c0336a) == a32Var) {
                            return a32Var;
                        }
                    }
                } else {
                    if (i2 != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj2);
                }
                return j59.a;
            }
        }

        public f(z68 z68Var) {
            this.b = z68Var;
        }

        @Override // defpackage.hd3
        public final Object collect(id3<? super Integer> id3Var, e02 e02Var) {
            Object objCollect = this.b.collect(new a(id3Var), e02Var);
            return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public tf3(nl3<? super Integer, j59> nl3Var, y22 y22Var, d<T> dVar, hd3<? extends List<? extends T>> hd3Var) {
        y22Var.getClass();
        hd3Var.getClass();
        this.a = nl3Var;
        this.b = y22Var;
        this.c = dVar;
        this.d = hd3Var;
        z68 z68VarA = px.a(-1);
        this.e = z68VarA;
        this.f = true;
        px.h(new de3(new df3(hd3Var, new a(this, null)), new b(this, null)), y22Var);
        px.h(new df3(new f(z68VarA), new c(this, null)), y22Var);
    }

    public final void a() {
        if (this.f) {
            av0.c(this.b, null, null, new e(this, null), 3);
        }
    }

    public final void b() {
        this.f = true;
        z68 z68Var = this.e;
        z68Var.getClass();
        z68Var.k(null, -1);
        a();
    }
}
