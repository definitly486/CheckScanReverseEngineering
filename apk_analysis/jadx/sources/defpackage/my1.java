package defpackage;

import java.lang.annotation.Annotation;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class my1 implements mp7 {
    public final op7 a;
    public final ne4<?> b;
    public final String c;

    public my1(op7 op7Var, ne4 ne4Var) {
        ne4Var.getClass();
        this.a = op7Var;
        this.b = ne4Var;
        this.c = op7Var.a + '<' + ne4Var.f() + '>';
    }

    @Override // defpackage.mp7
    public final boolean b() {
        return false;
    }

    @Override // defpackage.mp7
    public final int c(String str) {
        str.getClass();
        return this.a.c(str);
    }

    @Override // defpackage.mp7
    public final mp7 d(int i) {
        return this.a.g[i];
    }

    @Override // defpackage.mp7
    public final int e() {
        return this.a.c;
    }

    public final boolean equals(Object obj) {
        my1 my1Var = obj instanceof my1 ? (my1) obj : null;
        return my1Var != null && this.a.equals(my1Var.a) && aa4.e(my1Var.b, this.b);
    }

    @Override // defpackage.mp7
    public final String f(int i) {
        return this.a.f[i];
    }

    @Override // defpackage.mp7
    public final List<Annotation> g(int i) {
        return this.a.h[i];
    }

    @Override // defpackage.mp7
    public final List<Annotation> getAnnotations() {
        return this.a.d;
    }

    @Override // defpackage.mp7
    public final sp7 getKind() {
        return this.a.b;
    }

    @Override // defpackage.mp7
    public final String h() {
        return this.c;
    }

    public final int hashCode() {
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }

    @Override // defpackage.mp7
    public final boolean i(int i) {
        return this.a.i[i];
    }

    @Override // defpackage.mp7
    public final boolean isInline() {
        return false;
    }

    public final String toString() {
        return "ContextDescriptor(kClass: " + this.b + ", original: " + this.a + ')';
    }
}
