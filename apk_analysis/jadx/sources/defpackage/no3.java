package defpackage;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;

/* JADX INFO: loaded from: classes5.dex */
public final class no3 extends ViewModel {
    public final fs4 a;
    public final e17 b;
    public final mo3 c;
    public final in3 d;
    public final fo3 e;
    public final z68 f;
    public final gy6 g;
    public kn3 h;
    public s68 i;
    public boolean j;

    @bd2(c = "com.warefly.checkscan.features.games.presentation.GamesViewModel$1", f = "GamesViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<j59, e02<? super j59>, Object> {
        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return no3.this.new a(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(j59 j59Var, e02<? super j59> e02Var) {
            return ((a) create(j59Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            no3 no3Var = no3.this;
            s68 s68Var = no3Var.i;
            if (s68Var != null) {
                s68Var.cancel(null);
            }
            no3Var.a();
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.features.games.presentation.GamesViewModel$loadBanner$1", f = "GamesViewModel.kt", l = {76, 76}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<id3<? super kn3>, e02<? super j59>, Object> {
        public id3 l;
        public int m;
        public /* synthetic */ Object n;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = no3.this.new b(e02Var);
            bVar.n = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super kn3> id3Var, e02<? super j59> e02Var) {
            return ((b) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
        
            if (r0.emit(r7, r6) == r1) goto L15;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = r6.n
                id3 r0 = (defpackage.id3) r0
                a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                int r2 = r6.m
                r3 = 2
                r4 = 1
                r5 = 0
                if (r2 == 0) goto L21
                if (r2 == r4) goto L1b
                if (r2 != r3) goto L15
                defpackage.r57.b(r7)
                goto L42
            L15:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r6)
                return r5
            L1b:
                id3 r0 = r6.l
                defpackage.r57.b(r7)
                goto L35
            L21:
                defpackage.r57.b(r7)
                no3 r7 = defpackage.no3.this
                fs4 r7 = r7.a
                r6.n = r5
                r6.l = r0
                r6.m = r4
                java.lang.Object r7 = r7.a(r6)
                if (r7 != r1) goto L35
                goto L41
            L35:
                r6.n = r5
                r6.l = r5
                r6.m = r3
                java.lang.Object r6 = r0.emit(r7, r6)
                if (r6 != r1) goto L42
            L41:
                return r1
            L42:
                j59 r6 = defpackage.j59.a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: no3.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @bd2(c = "com.warefly.checkscan.features.games.presentation.GamesViewModel$loadBanner$2", f = "GamesViewModel.kt", l = {77}, m = "invokeSuspend")
    public static final class c extends pg8 implements dm3<id3<? super kn3>, Throwable, e02<? super j59>, Object> {
        public int l;
        public /* synthetic */ id3 m;

        @Override // defpackage.dm3
        public final Object invoke(id3<? super kn3> id3Var, Throwable th, e02<? super j59> e02Var) {
            c cVar = new c(3, e02Var);
            cVar.m = id3Var;
            return cVar.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            id3 id3Var = this.m;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                this.m = null;
                this.l = 1;
                if (id3Var.emit(null, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.features.games.presentation.GamesViewModel$loadBanner$3", f = "GamesViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<id3<? super kn3>, e02<? super j59>, Object> {
        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return no3.this.new d(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super kn3> id3Var, e02<? super j59> e02Var) {
            return ((d) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            z68 z68Var = no3.this.f;
            do {
                value = z68Var.getValue();
            } while (!z68Var.a(value, lo3.a((lo3) value, jo3.c.a, null, 2)));
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.features.games.presentation.GamesViewModel$loadBanner$4", f = "GamesViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<kn3, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public e(e02<? super e> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            e eVar = no3.this.new e(e02Var);
            eVar.l = obj;
            return eVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(kn3 kn3Var, e02<? super j59> e02Var) {
            return ((e) create(kn3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            kn3 kn3Var = (kn3) this.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            no3 no3Var = no3.this;
            no3Var.h = kn3Var;
            no3Var.d();
            if (no3Var.j) {
                no3Var.j = false;
                no3Var.c();
            }
            return j59.a;
        }
    }

    public no3(fs4 fs4Var, e17 e17Var, mo3 mo3Var, in3 in3Var, fo3 fo3Var, boolean z) {
        this.a = fs4Var;
        this.b = e17Var;
        this.c = mo3Var;
        this.d = in3Var;
        this.e = fo3Var;
        z68 z68VarA = px.a(new lo3(0));
        this.f = z68VarA;
        this.g = bf3.b(z68VarA);
        this.j = z;
        a();
        px.h(new df3(mo3Var.a(), new a(null)), ViewModelKt.getViewModelScope(this));
    }

    public final void a() {
        this.i = px.h(new df3(new ce3(new de3(new tb7(new b(null)), new c(3, null)), new d(null)), new e(null)), ViewModelKt.getViewModelScope(this));
    }

    public final void b(un3 un3Var) {
        z68 z68Var;
        Object value;
        un3Var.getClass();
        if (un3Var.equals(un3.a.a)) {
            s68 s68Var = this.i;
            if (s68Var == null || !s68Var.isActive()) {
                if (this.h == null) {
                    a();
                    return;
                } else {
                    this.d.a();
                    c();
                    return;
                }
            }
            return;
        }
        if (un3Var.equals(un3.b.a)) {
            do {
                z68Var = this.f;
                value = z68Var.getValue();
            } while (!z68Var.a(value, lo3.a((lo3) value, null, null, 1)));
        } else {
            if (!un3Var.equals(un3.c.a)) {
                me0.e();
                return;
            }
            s68 s68Var2 = this.i;
            if ((s68Var2 == null || !s68Var2.isActive()) && this.h == null) {
                a();
            }
        }
    }

    public final void c() {
        mo3 mo3Var = this.c;
        boolean zD = mo3Var.d();
        fo3 fo3Var = this.e;
        if (zD) {
            fo3Var.a();
        } else if (mo3Var.b()) {
            fo3Var.b();
        } else {
            this.i = px.h(new df3(new ce3(new de3(new tb7(new oo3(this, null)), new po3(3, null)), new qo3(this, null)), new ro3(this, null)), ViewModelKt.getViewModelScope(this));
        }
    }

    public final void d() {
        z68 z68Var;
        Object value;
        kn3 kn3Var = this.h;
        jo3 aVar = kn3Var != null ? new jo3.a(kn3Var) : jo3.b.a;
        do {
            z68Var = this.f;
            value = z68Var.getValue();
        } while (!z68Var.a(value, lo3.a((lo3) value, aVar, null, 2)));
    }
}
