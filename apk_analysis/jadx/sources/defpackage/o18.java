package defpackage;

import android.content.Context;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class o18 {
    public static final /* synthetic */ AtomicReference a = new AtomicReference(null);

    public interface a {
        sy6 a(Context context);
    }

    /* JADX WARN: Multi-variable type inference failed */
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
    public static final r14 a(Context context) {
        r14 r14Var;
        r14 r14Var2;
        a aVar;
        a aVar2;
        a aVar3;
        a aVar4;
        AtomicReference atomicReference = a;
        Object obj = atomicReference.get();
        r14 r14Var3 = obj instanceof r14 ? (r14) obj : null;
        if (r14Var3 != null) {
            return r14Var3;
        }
        r14 r14VarA = null;
        while (true) {
            Object obj2 = atomicReference.get();
            if (obj2 instanceof r14) {
                r14Var = (r14) obj2;
                r14Var2 = r14VarA;
            } else {
                if (r14VarA == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (obj2 instanceof a) {
                        aVar4 = (a) obj2;
                    } else {
                        aVar = null;
                    }
                    if (aVar != null) {
                        aVar = aVar4;
                        r14VarA = aVar.a(applicationContext);
                    } else {
                        if (applicationContext instanceof a) {
                            aVar3 = (a) applicationContext;
                        } else {
                            aVar2 = null;
                        }
                        if (aVar2 != null) {
                            aVar = aVar4;
                            aVar = aVar4;
                            aVar2 = aVar3;
                            r14VarA = aVar2.a(applicationContext);
                        } else {
                            aVar = aVar4;
                            aVar = aVar4;
                            aVar2 = aVar3;
                            r14VarA = q18.a.a(applicationContext);
                        }
                    }
                }
                r14Var = r14VarA;
                r14Var2 = r14Var;
            }
            while (!atomicReference.compareAndSet(obj2, r14Var)) {
                if (atomicReference.get() != obj2) {
                    r14VarA = r14Var2;
                }
            }
            return r14Var;
        }
    }
}
