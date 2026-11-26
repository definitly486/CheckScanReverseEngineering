package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes5.dex */
public final class uz5<T> implements fo5<T> {
    public final String a;
    public final wu1 b;
    public final ArrayList c;

    public static final class a<T, E> {
        public final d3<T, E> a;
        public final E b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(d3<? super T, E> d3Var, E e) {
            this.a = d3Var;
            this.b = e;
        }
    }

    public /* synthetic */ class b extends qm3 implements nl3<T, Boolean> {
        @Override // defpackage.nl3
        public final Boolean invoke(Object obj) {
            return Boolean.valueOf(((af6) this.receiver).test(obj));
        }
    }

    public /* synthetic */ class c extends qm3 implements nl3<Object, Boolean> {
        @Override // defpackage.nl3
        public final Boolean invoke(Object obj) {
            ((o39) this.receiver).getClass();
            return Boolean.TRUE;
        }
    }

    public static final class d extends gh4 implements nl3<T, j59> {
        public final /* synthetic */ uz5<T> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public d(uz5<? super T> uz5Var) {
            super(1);
            this.f = uz5Var;
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
        /*  JADX ERROR: JadxRuntimeException in pass: FinishTypeInference
            jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r3v1 boolean
            	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
            	at jadx.core.dex.visitors.typeinference.FinishTypeInference.lambda$visit$0(FinishTypeInference.java:27)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
            	at jadx.core.dex.visitors.typeinference.FinishTypeInference.visit(FinishTypeInference.java:22)
            */
        @Override // defpackage.nl3
        public final defpackage.j59 invoke(java.lang.Object r3) {
            /*
                r2 = this;
                uz5<T> r2 = r2.f
                java.util.ArrayList r2 = r2.c
                java.util.Iterator r2 = r2.iterator()
            L8:
                boolean r0 = r2.hasNext()
                if (r0 == 0) goto L1c
                java.lang.Object r0 = r2.next()
                uz5$a r0 = (uz5.a) r0
                d3<T, E> r1 = r0.a
                E r0 = r0.b
                r1.c(r3, r0)
                goto L8
            L1c:
                j59 r2 = defpackage.j59.a
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: uz5.d.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public uz5(String str, wu1 wu1Var) {
        this.a = str;
        this.b = wu1Var;
        ar4 ar4VarE = u96.e();
        tc0.g(ar4VarE, wu1Var);
        ar4 ar4VarD = u96.d(ar4VarE);
        ArrayList arrayList = new ArrayList(kn1.q(ar4VarD, 10));
        ListIterator listIterator = ar4VarD.listIterator(0);
        while (true) {
            ar4.b bVar = (ar4.b) listIterator;
            if (!bVar.hasNext()) {
                break;
            } else {
                arrayList.add(((x83) bVar.next()).c());
            }
        }
        List<d93> listT0 = qn1.t0(qn1.x0(arrayList));
        ArrayList arrayList2 = new ArrayList(kn1.q(listT0, 10));
        for (d93 d93Var : listT0) {
            d93Var.getClass();
            Object defaultValue = d93Var.getDefaultValue();
            if (defaultValue == null) {
                h8.f(d93Var.getName(), "The field '", "' does not define a default value");
                throw null;
            }
            arrayList2.add(new a(d93Var.a(), defaultValue));
        }
        this.c = arrayList2;
    }

    @Override // defpackage.ti3
    public final vi3<T> a() {
        vi3<T> vi3VarA = this.b.a();
        ArrayList<a> arrayList = this.c;
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        for (a aVar : arrayList) {
            arrayList2.add(new np1(aVar.b, new tz5(1, aVar.a, d3.class, "getter", "getter(Ljava/lang/Object;)Ljava/lang/Object;", 0)));
        }
        Object hw1Var = arrayList2.isEmpty() ? o39.a : arrayList2.size() == 1 ? (af6) qn1.k0(arrayList2) : new hw1(arrayList2);
        return hw1Var instanceof o39 ? new kx1() : new fv1(u96.i(new b36(new b(1, hw1Var, af6.class, "test", "test(Ljava/lang/Object;)Z", 0), new kx1()), new b36(new c(1, o39.a, o39.class, "test", "test(Ljava/lang/Object;)Z", 0), vi3VarA)));
    }

    @Override // defpackage.ti3
    public final a46<T> b() {
        a46<T> a46VarB = this.b.b();
        a46<T> a46VarB2 = new hx1(this.a).b();
        boolean zIsEmpty = this.c.isEmpty();
        kx2 kx2Var = kx2.b;
        return new a46<>(kx2Var, u96.i(a46VarB, xs7.a(u96.i(a46VarB2, new a46(zIsEmpty ? kx2Var : u96.h(new c59(new d(this))), kx2Var)))));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof uz5)) {
            return false;
        }
        uz5 uz5Var = (uz5) obj;
        return this.a.equals(uz5Var.a) && this.b.equals(uz5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Optional(" + this.a + ", " + this.b + ')';
    }
}
