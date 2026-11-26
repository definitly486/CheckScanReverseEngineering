package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class d40 implements hd3<y00> {
    public final /* synthetic */ hd3 b;
    public final /* synthetic */ b40 c;

    public static final class a<T> implements id3 {
        public final /* synthetic */ id3 b;
        public final /* synthetic */ b40 c;

        /* JADX INFO: renamed from: d40$a$a, reason: collision with other inner class name */
        @bd2(c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor$authAlfaIdClick$$inlined$map$1$2", f = "BalanceInteractor.kt", l = {217}, m = "emit")
        public static final class C0177a extends f02 {
            public /* synthetic */ Object l;
            public int m;

            public C0177a(e02 e02Var) {
                super(e02Var);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                this.l = obj;
                this.m |= Integer.MIN_VALUE;
                return a.this.emit(null, this);
            }
        }

        public a(id3 id3Var, b40 b40Var) {
            this.b = id3Var;
            this.c = b40Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // defpackage.id3
        public final Object emit(Object obj, e02 e02Var) {
            C0177a c0177a;
            y00 bVar;
            if (e02Var instanceof C0177a) {
                c0177a = (C0177a) e02Var;
                int i = c0177a.m;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c0177a.m = i - Integer.MIN_VALUE;
                } else {
                    c0177a = new C0177a(e02Var);
                }
            } else {
                c0177a = new C0177a(e02Var);
            }
            Object obj2 = c0177a.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = c0177a.m;
            if (i2 == 0) {
                r57.b(obj2);
                x00 x00Var = (x00) obj;
                this.c.getClass();
                String strA = x00Var.a().a();
                if (strA == null || ta8.M(strA)) {
                    String strE = x00Var.a().e();
                    if (strE == null) {
                        strE = "";
                    }
                    String strD = x00Var.a().d();
                    if (strD == null) {
                        strD = "";
                    }
                    String strB = x00Var.a().b();
                    d10.a aVarC = x00Var.a().c();
                    String strA2 = aVarC != null ? aVarC.a() : null;
                    bVar = new y00.b(new a40(strE, strD, strB, new a40.a(strA2 != null ? strA2 : "", null), null, null, 48));
                } else {
                    bVar = new y00.c(x00Var.a().a());
                }
                c0177a.m = 1;
                if (this.b.emit(bVar, c0177a) == a32Var) {
                    return a32Var;
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

    public d40(hd3 hd3Var, b40 b40Var) {
        this.b = hd3Var;
        this.c = b40Var;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super y00> id3Var, e02 e02Var) {
        Object objCollect = this.b.collect(new a(id3Var, this.c), e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }
}
