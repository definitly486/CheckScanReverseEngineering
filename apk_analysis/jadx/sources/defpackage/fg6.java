package defpackage;

import java.lang.annotation.Annotation;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class fg6 implements mp7 {
    public final String a;
    public final dg6 b;

    public fg6(String str, dg6 dg6Var) {
        dg6Var.getClass();
        this.a = str;
        this.b = dg6Var;
    }

    public final void a() {
        throw new IllegalStateException(me0.d(new StringBuilder("Primitive descriptor "), this.a, " does not have elements"));
    }

    @Override // defpackage.mp7
    public final int c(String str) {
        str.getClass();
        a();
        throw null;
    }

    @Override // defpackage.mp7
    public final mp7 d(int i) {
        a();
        throw null;
    }

    @Override // defpackage.mp7
    public final int e() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fg6)) {
            return false;
        }
        fg6 fg6Var = (fg6) obj;
        return this.a.equals(fg6Var.a) && aa4.e(this.b, fg6Var.b);
    }

    @Override // defpackage.mp7
    public final String f(int i) {
        a();
        throw null;
    }

    @Override // defpackage.mp7
    public final List<Annotation> g(int i) {
        a();
        throw null;
    }

    @Override // defpackage.mp7
    public final sp7 getKind() {
        return this.b;
    }

    @Override // defpackage.mp7
    public final String h() {
        return this.a;
    }

    public final int hashCode() {
        return (this.b.hashCode() * 31) + this.a.hashCode();
    }

    @Override // defpackage.mp7
    public final boolean i(int i) {
        a();
        throw null;
    }

    public final String toString() {
        return xp.e(new StringBuilder("PrimitiveDescriptor("), this.a, ')');
    }
}
