package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class wc<T> implements fo5<T> {
    public final wu1 a;
    public final ArrayList b;

    public wc(wu1 wu1Var, ArrayList arrayList) {
        this.a = wu1Var;
        this.b = arrayList;
    }

    @Override // defpackage.ti3
    public final vi3<T> a() {
        return this.a.a();
    }

    @Override // defpackage.ti3
    public final a46<T> b() {
        ar4 ar4VarE = u96.e();
        ar4VarE.add(this.a.b());
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ar4VarE.add(((ti3) it.next()).b());
        }
        return new a46<>(kx2.b, u96.d(ar4VarE));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof wc)) {
            return false;
        }
        wc wcVar = (wc) obj;
        return this.a.equals(wcVar.a) && this.b.equals(wcVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "AlternativesParsing(" + this.b + ')';
    }
}
