package defpackage;

import java.util.Map;
import java.util.Map.Entry;

/* JADX INFO: loaded from: classes5.dex */
public abstract class y0<E extends Map.Entry<? extends K, ? extends V>, K, V> extends f1<E> {
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        uz4<K, V> uz4Var = ((vz4) this).b;
        uz4Var.getClass();
        int iK = uz4Var.k((K) entry.getKey());
        if (iK < 0) {
            return false;
        }
        V[] vArr = uz4Var.c;
        vArr.getClass();
        return aa4.e(vArr[iK], entry.getValue());
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        uz4<K, V> uz4Var = ((vz4) this).b;
        uz4Var.getClass();
        uz4Var.d();
        int iK = uz4Var.k((K) entry.getKey());
        if (iK >= 0) {
            V[] vArr = uz4Var.c;
            vArr.getClass();
            if (aa4.e(vArr[iK], entry.getValue())) {
                uz4Var.p(iK);
                return true;
            }
        }
        return false;
    }
}
