package defpackage;

import java.util.ArrayList;
import java.util.ListIterator;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class ox7<T> implements fo5<T> {
    public final te0 a;
    public final Set<c93<T>> b;

    public /* synthetic */ class a extends qm3 implements nl3<T, Boolean> {
        public final /* synthetic */ ox7<T> c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(ox7<? super T> ox7Var) {
            super(1, aa4.a.class, "checkIfAllNegative", "formatter$checkIfAllNegative(Lkotlinx/datetime/internal/format/SignedFormatStructure;Ljava/lang/Object;)Z", 0);
            this.c = ox7Var;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.nl3
        public final Boolean invoke(Object obj) {
            boolean z = false;
            boolean z2 = false;
            for (c93<T> c93Var : this.c.b) {
                if (aa4.e(c93Var.isNegative().a.get((Object) obj), Boolean.TRUE)) {
                    z2 = true;
                } else if (!c93Var.a(obj)) {
                    return Boolean.valueOf(z);
                }
            }
            z = z2;
            return Boolean.valueOf(z);
        }
    }

    public static final class b extends gh4 implements bm3<T, Boolean, j59> {
        public final /* synthetic */ ox7<T> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(ox7<? super T> ox7Var) {
            super(2);
            this.f = ox7Var;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.bm3
        public final j59 invoke(Object obj, Boolean bool) {
            boolean zBooleanValue = bool.booleanValue();
            for (c93<T> c93Var : this.f.b) {
                c93Var.isNegative().c(obj, Boolean.valueOf(zBooleanValue != aa4.e(c93Var.isNegative().a.get((Object) obj), Boolean.TRUE)));
            }
            return j59.a;
        }
    }

    public ox7(te0 te0Var) {
        this.a = te0Var;
        ar4 ar4VarE = u96.e();
        tc0.g(ar4VarE, te0Var);
        ar4 ar4VarD = u96.d(ar4VarE);
        ArrayList arrayList = new ArrayList();
        ListIterator listIterator = ar4VarD.listIterator(0);
        while (true) {
            ar4.b bVar = (ar4.b) listIterator;
            if (!bVar.hasNext()) {
                break;
            }
            c93 c93VarB = ((x83) bVar.next()).c().b();
            if (c93VarB != null) {
                arrayList.add(c93VarB);
            }
        }
        Set<c93<T>> setY0 = qn1.y0(arrayList);
        this.b = setY0;
        if (setY0.isEmpty()) {
            fg.c("Signed format must contain at least one field with a sign");
            throw null;
        }
    }

    @Override // defpackage.ti3
    public final vi3<T> a() {
        return new px7(this.a.a.a(), new a(this));
    }

    @Override // defpackage.ti3
    public final a46<T> b() {
        return xs7.a(u96.i(new a46(u96.h(new kx7(new b(this), "sign for " + this.b)), kx2.b), this.a.a.b()));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ox7) {
            return this.a.equals(((ox7) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return Boolean.hashCode(true) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "SignedFormatStructure(" + this.a + ')';
    }
}
