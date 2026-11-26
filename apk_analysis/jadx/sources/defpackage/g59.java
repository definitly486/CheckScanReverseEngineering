package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class g59<T> implements id3<T> {
    public final o22 b;
    public final Object c;
    public final a d;

    @bd2(c = "kotlinx.coroutines.flow.internal.UndispatchedContextCollector$emitRef$1", f = "ChannelFlow.kt", l = {208}, m = "invokeSuspend", v = 1)
    public static final class a extends pg8 implements bm3<T, e02<? super j59>, Object> {
        public int l;
        public /* synthetic */ Object m;
        public final /* synthetic */ id3<T> n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(id3<? super T> id3Var, e02<? super a> e02Var) {
            super(2, e02Var);
            this.n = id3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = new a(this.n, e02Var);
            aVar.m = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Object obj, e02<? super j59> e02Var) {
            return ((a) create(obj, e02Var)).invokeSuspend(j59.a);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type e02 to g59$a for r4v3 'this'  e02
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                java.lang.Object r0 = r4.m
                a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                int r2 = r4.l
                r3 = 1
                if (r2 == 0) goto L16
                if (r2 != r3) goto Lf
                defpackage.r57.b(r5)
                goto L27
            Lf:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r4)
                r4 = 0
                return r4
            L16:
                defpackage.r57.b(r5)
                r5 = 0
                r4.m = r5
                r4.l = r3
                id3<T> r5 = r4.n
                java.lang.Object r4 = r5.emit(r0, r4)
                if (r4 != r1) goto L27
                return r1
            L27:
                j59 r4 = defpackage.j59.a
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: g59.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public g59(id3<? super T> id3Var, o22 o22Var) {
        this.b = o22Var;
        this.c = lt8.b(o22Var);
        this.d = new a(id3Var, null);
    }

    @Override // defpackage.id3
    public final Object emit(T t, e02<? super j59> e02Var) throws Throwable {
        Object objA = f91.a(this.b, t, this.c, this.d, e02Var);
        return objA == a32.COROUTINE_SUSPENDED ? objA : j59.a;
    }
}
