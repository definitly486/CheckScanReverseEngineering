package com.google.protobuf;

import defpackage.fx0;

/* JADX INFO: loaded from: classes4.dex */
public final class l0 extends j0<k0, k0> {
    @Override // com.google.protobuf.j0
    public final void a(k0 k0Var, int i, int i2) {
        k0Var.f((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.protobuf.j0
    public final void b(k0 k0Var, int i, long j) {
        k0Var.f((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.protobuf.j0
    public final void c(k0 k0Var, int i, k0 k0Var2) {
        k0Var.f((i << 3) | 3, k0Var2);
    }

    @Override // com.google.protobuf.j0
    public final void d(k0 k0Var, int i, fx0 fx0Var) {
        k0Var.f((i << 3) | 2, fx0Var);
    }

    @Override // com.google.protobuf.j0
    public final void e(k0 k0Var, int i, long j) {
        k0Var.f(i << 3, Long.valueOf(j));
    }

    @Override // com.google.protobuf.j0
    public final k0 f(Object obj) {
        o oVar = (o) obj;
        k0 k0Var = oVar.unknownFields;
        if (k0Var != k0.f) {
            return k0Var;
        }
        k0 k0Var2 = new k0();
        oVar.unknownFields = k0Var2;
        return k0Var2;
    }

    @Override // com.google.protobuf.j0
    public final k0 g(Object obj) {
        return ((o) obj).unknownFields;
    }

    @Override // com.google.protobuf.j0
    public final int h(k0 k0Var) {
        return k0Var.c();
    }

    @Override // com.google.protobuf.j0
    public final int i(k0 k0Var) {
        k0 k0Var2 = k0Var;
        int i = k0Var2.d;
        if (i != -1) {
            return i;
        }
        int iZ = 0;
        for (int i2 = 0; i2 < k0Var2.a; i2++) {
            int i3 = k0Var2.b[i2] >>> 3;
            fx0 fx0Var = (fx0) k0Var2.c[i2];
            int iZ2 = CodedOutputStream.Z(i3) + CodedOutputStream.Y(2) + (CodedOutputStream.Y(1) * 2);
            int iY = CodedOutputStream.Y(3);
            int size = fx0Var.size();
            iZ += CodedOutputStream.Z(size) + size + iY + iZ2;
        }
        k0Var2.d = iZ;
        return iZ;
    }

    @Override // com.google.protobuf.j0
    public final void j(Object obj) {
        k0 k0Var = ((o) obj).unknownFields;
        if (k0Var.e) {
            k0Var.e = false;
        }
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
    @Override // com.google.protobuf.j0
    public final k0 k(Object obj, Object obj2) {
        k0 k0Var = (k0) obj;
        k0 k0Var2 = (k0) obj2;
        k0 k0Var3 = k0.f;
        if (k0Var3.equals(k0Var2)) {
            return k0Var;
        }
        if (k0Var3.equals(k0Var)) {
            return k0.e(k0Var, k0Var2);
        }
        k0Var.getClass();
        if (k0Var2.equals(k0Var3)) {
            return k0Var;
        }
        k0Var.a();
        int i = k0Var.a + k0Var2.a;
        k0Var.b(i);
        System.arraycopy(k0Var2.b, 0, k0Var.b, k0Var.a, k0Var2.a);
        System.arraycopy(k0Var2.c, 0, k0Var.c, k0Var.a, k0Var2.a);
        k0Var.a = i;
        return k0Var;
    }

    @Override // com.google.protobuf.j0
    public final k0 m() {
        return new k0();
    }

    @Override // com.google.protobuf.j0
    public final void n(Object obj, k0 k0Var) {
        ((o) obj).unknownFields = k0Var;
    }

    @Override // com.google.protobuf.j0
    public final void o(Object obj, k0 k0Var) {
        ((o) obj).unknownFields = k0Var;
    }

    @Override // com.google.protobuf.j0
    public final k0 p(Object obj) {
        k0 k0Var = (k0) obj;
        if (k0Var.e) {
            k0Var.e = false;
        }
        return k0Var;
    }

    @Override // com.google.protobuf.j0
    public final void q(k0 k0Var, n0 n0Var) {
        k0 k0Var2 = k0Var;
        k0Var2.getClass();
        ((h) n0Var).getClass();
        if (n0.a.ASCENDING == n0.a.DESCENDING) {
            for (int i = k0Var2.a - 1; i >= 0; i--) {
                ((h) n0Var).h(k0Var2.b[i] >>> 3, k0Var2.c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < k0Var2.a; i2++) {
            ((h) n0Var).h(k0Var2.b[i2] >>> 3, k0Var2.c[i2]);
        }
    }

    @Override // com.google.protobuf.j0
    public final void r(k0 k0Var, n0 n0Var) {
        k0Var.g(n0Var);
    }
}
