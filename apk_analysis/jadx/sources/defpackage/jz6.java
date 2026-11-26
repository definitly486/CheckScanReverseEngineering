package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class jz6 implements ab8 {
    public final long a;
    public final rf9 b;
    public final b c;

    public static final class a {
        public final x04 a;
        public final Map<String, Object> b;
        public final long c;

        public a(x04 x04Var, Map<String, ? extends Object> map, long j) {
            this.a = x04Var;
            this.b = map;
            this.c = j;
        }
    }

    public static final class b extends hy4<o95.b, a> {
        public b(long j) {
            super(j);
        }

        @Override // defpackage.hy4
        public final void a(o95.b bVar, a aVar, a aVar2) {
            a aVar3 = aVar;
            jz6.this.b.d(bVar, aVar3.a, aVar3.b, aVar3.c);
        }
    }

    public jz6(long j, rf9 rf9Var) {
        this.a = j;
        this.b = rf9Var;
        this.c = new b(j);
    }

    @Override // defpackage.ab8
    public final o95.c a(o95.b bVar) {
        a aVar = (a) this.c.a.get(bVar);
        if (aVar != null) {
            return new o95.c(aVar.a, aVar.b);
        }
        return null;
    }

    @Override // defpackage.ab8
    public final void b(long j) {
        b bVar = this.c;
        bVar.b = j;
        bVar.d(j);
    }

    @Override // defpackage.ab8
    public final long c() {
        return this.a;
    }

    @Override // defpackage.ab8
    public final void clear() {
        this.c.d(-1L);
    }

    /* JADX WARN: Multi-variable type inference failed */
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
    @Override // defpackage.ab8
    public final void d(o95.b bVar, x04 x04Var, Map<String, ? extends Object> map, long j) {
        b bVar2 = this.c;
        long j2 = bVar2.b;
        LinkedHashMap linkedHashMap = bVar2.a;
        if (j > j2) {
            Object objRemove = linkedHashMap.remove(bVar);
            if (objRemove != null) {
                bVar2.c = bVar2.b() - bVar2.c(bVar, objRemove);
                bVar2.a(bVar, objRemove, null);
            }
            this.b.d(bVar, x04Var, map, j);
            return;
        }
        a aVar = new a(x04Var, map, j);
        Object objPut = linkedHashMap.put(bVar, aVar);
        bVar2.c = bVar2.c(bVar, aVar) + bVar2.b();
        if (objPut != null) {
            bVar2.c = bVar2.b() - bVar2.c(bVar, objPut);
            bVar2.a(bVar, objPut, aVar);
        }
        bVar2.d(bVar2.b);
    }

    @Override // defpackage.ab8
    public final void e(long j) {
        this.c.d(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ab8
    public final boolean f(o95.b bVar) {
        b bVar2 = this.c;
        Object objRemove = bVar2.a.remove(bVar);
        if (objRemove != null) {
            bVar2.c = bVar2.b() - bVar2.c(bVar, objRemove);
            bVar2.a(bVar, objRemove, null);
        }
        return objRemove != null;
    }

    @Override // defpackage.ab8
    public final long getSize() {
        return this.c.b();
    }
}
