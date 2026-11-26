package yads;

import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes6.dex */
public final class g90 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ pg8 d;
    public final /* synthetic */ nl3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public g90(defpackage.bm3 bm3Var, nl3 nl3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = (pg8) bm3Var;
        this.e = nl3Var;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [bm3, pg8] */
    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        g90 g90Var = new g90(this.d, this.e, e02Var);
        g90Var.c = obj;
        return g90Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((g90) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [bm3, pg8] */
    /* JADX WARN: Type inference failed for: r3v8 */
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
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        try {
            if (i == 0) {
                r57.b(obj);
                defpackage.y22 y22Var = (defpackage.y22) this.c;
                ?? r1 = this.d;
                this.b = 1;
                Object objInvoke = r1.invoke(y22Var, this);
                this = objInvoke;
                if (objInvoke == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                this = this;
            }
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            th.getMessage();
            this.e.invoke(th);
        }
        return j59.a;
    }
}
