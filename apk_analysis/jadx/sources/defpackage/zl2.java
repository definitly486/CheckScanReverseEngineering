package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class zl2 {
    public final zs7 a;
    public final zs7 b;

    public interface a {

        /* JADX INFO: renamed from: zl2$a$a, reason: collision with other inner class name */
        public static final class C0373a implements a {
            public final String a;

            public C0373a(String str) {
                this.a = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof C0373a) && this.a.equals(((C0373a) obj).a);
            }

            public final int hashCode() {
                return this.a.hashCode();
            }

            public final String toString() {
                return me0.c("OpenUrl(url=", this.a, ")");
            }
        }

        public static final class b implements a {
            public static final b a = new b();
        }

        public static final class c implements a {
            public static final c a = new c();
        }

        public static final class d implements a {
            public static final d a = new d();
        }

        public static final class e implements a {
            public static final e a = new e();
        }

        public static final class f implements a {
            public static final f a = new f();
        }

        public static final class g implements a {
            public static final g a = new g();
        }

        public static final class h implements a {
            public static final h a = new h();
        }

        public static final class i implements a {
            public static final i a = new i();
        }
    }

    @bd2(c = "com.warefly.checkscan.domain.interactor.desktop.DesktopInteractor", f = "DesktopInteractor.kt", l = {17}, m = "emit")
    public static final class b extends f02 {
        public Object[] l;
        public int m;
        public int n;
        public /* synthetic */ Object o;
        public int q;

        public b(e02<? super b> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.o = obj;
            this.q |= Integer.MIN_VALUE;
            return zl2.this.b(null, this);
        }
    }

    public zl2() {
        zs7 zs7VarB = bt7.b(0, 0, null, 7);
        this.a = zs7VarB;
        this.b = zs7VarB;
    }

    public final Object a(a aVar, f02 f02Var) throws Throwable {
        Object objEmit = this.a.emit(aVar, f02Var);
        return objEmit == a32.COROUTINE_SUSPENDED ? objEmit : j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0041  */
    /* JADX WARN: Code duplicated, block: B:18:0x0053 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0051 -> B:19:0x0054). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object b(zl2.a[] r8, defpackage.e02<? super defpackage.j59> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof zl2.b
            if (r0 == 0) goto L13
            r0 = r9
            zl2$b r0 = (zl2.b) r0
            int r1 = r0.q
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.q = r1
            goto L18
        L13:
            zl2$b r0 = new zl2$b
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.o
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.q
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L30
            int r8 = r0.n
            int r2 = r0.m
            java.lang.Object[] r4 = r0.l
            zl2$a[] r4 = (zl2.a[]) r4
            defpackage.r57.b(r9)
            r9 = r4
            goto L54
        L30:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            r7 = 0
            return r7
        L37:
            defpackage.r57.b(r9)
            int r9 = r8.length
            r2 = 0
            r6 = r9
            r9 = r8
            r8 = r6
        L3f:
            if (r2 >= r8) goto L56
            r4 = r9[r2]
            r0.l = r9
            r0.m = r2
            r0.n = r8
            r0.q = r3
            zs7 r5 = r7.a
            java.lang.Object r4 = r5.emit(r4, r0)
            if (r4 != r1) goto L54
            return r1
        L54:
            int r2 = r2 + r3
            goto L3f
        L56:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zl2.b(zl2$a[], e02):java.lang.Object");
    }

    public final void c(y22 y22Var, bm3 bm3Var) {
        y22Var.getClass();
        px.h(new df3(this.a, bm3Var), y22Var);
    }
}
