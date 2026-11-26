package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1", f = "SignInConfirmInteractor.kt", l = {28, 48, 56}, m = "invokeSuspend")
public final class bx7 extends pg8 implements bm3<id3<? super j3>, e02<? super j59>, Object> {
    public j3 l;
    public Iterator m;
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ cx7 p;
    public final /* synthetic */ String q;
    public final /* synthetic */ am2 r;
    public final /* synthetic */ String s;

    @bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$1", f = "SignInConfirmInteractor.kt", l = {42}, m = "invokeSuspend")
    public static final class a extends pg8 implements nl3<e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ cx7 m;
        public final /* synthetic */ j3 n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(cx7 cx7Var, j3 j3Var, e02<? super a> e02Var) {
            super(1, e02Var);
            this.m = cx7Var;
            this.n = j3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new a(this.m, this.n, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((a) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                e89 e89Var = this.m.b;
                String str = this.n.f;
                this.l = 1;
                if (e89Var.a(str, this) == a32Var) {
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

    @bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$2", f = "SignInConfirmInteractor.kt", l = {43}, m = "invokeSuspend")
    public static final class b extends pg8 implements nl3<e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ cx7 m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(cx7 cx7Var, e02<? super b> e02Var) {
            super(1, e02Var);
            this.m = cx7Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new b(this.m, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((b) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                to7 to7Var = this.m.c;
                this.l = 1;
                if (to7Var.a(this) == a32Var) {
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

    @bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$3", f = "SignInConfirmInteractor.kt", l = {44}, m = "invokeSuspend")
    public static final class c extends pg8 implements nl3<e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ cx7 m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(cx7 cx7Var, e02<? super c> e02Var) {
            super(1, e02Var);
            this.m = cx7Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new c(this.m, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((c) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                c89 c89Var = this.m.d;
                this.l = 1;
                if (c89Var.a(this) == a32Var) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bx7(cx7 cx7Var, String str, am2 am2Var, String str2, e02<? super bx7> e02Var) {
        super(2, e02Var);
        this.p = cx7Var;
        this.q = str;
        this.r = am2Var;
        this.s = str2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        bx7 bx7Var = new bx7(this.p, this.q, this.r, this.s, e02Var);
        bx7Var.o = obj;
        return bx7Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super j3> id3Var, e02<? super j59> e02Var) {
        return ((bx7) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ba A[Catch: all -> 0x002a, PHI: r1 r4 r7
      0x00ba: PHI (r1v9 java.util.Iterator) = (r1v6 java.util.Iterator), (r1v12 java.util.Iterator) binds: [B:32:0x00b7, B:11:0x0025] A[DONT_GENERATE, DONT_INLINE]
      0x00ba: PHI (r4v8 j3) = (r4v6 j3), (r4v9 j3) binds: [B:32:0x00b7, B:11:0x0025] A[DONT_GENERATE, DONT_INLINE]
      0x00ba: PHI (r7v13 id3) = (r7v11 id3), (r7v15 id3) binds: [B:32:0x00b7, B:11:0x0025] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #0 {all -> 0x002a, blocks: (B:11:0x0025, B:34:0x00ba, B:31:0x00ab), top: B:48:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00c9  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00b7 -> B:34:0x00ba). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bx7.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
