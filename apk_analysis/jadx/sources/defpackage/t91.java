package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class t91 {

    @bd2(c = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$trySendBlocking$2", f = "Channels.kt", l = {39}, m = "invokeSuspend", v = 1)
    public static final class a extends pg8 implements bm3<y22, e02<? super p91<? extends j59>>, Object> {
        public int l;
        public /* synthetic */ Object m;
        public final /* synthetic */ no7<E> n;
        public final /* synthetic */ E o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(no7<? super E> no7Var, E e, e02<? super a> e02Var) {
            super(2, e02Var);
            this.n = no7Var;
            this.o = e;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = new a(this.n, this.o, e02Var);
            aVar.m = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super p91<? extends j59>> e02Var) {
            return ((a) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

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
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object aVar;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            try {
                if (i == 0) {
                    r57.b(obj);
                    no7<E> no7Var = this.n;
                    E e = this.o;
                    this.m = null;
                    this.l = 1;
                    if (no7Var.send(e, this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                aVar = j59.a;
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            return new p91(!(aVar instanceof k57.a) ? j59.a : new p91.a(k57.a(aVar)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> Object a(no7<? super E> no7Var, E e) {
        Object objMo0trySendJP2dKIU = no7Var.mo0trySendJP2dKIU(e);
        if (objMo0trySendJP2dKIU instanceof p91.b) {
            return ((p91) bv0.a(gx2.b, new a(no7Var, e, null))).a;
        }
        return j59.a;
    }
}
