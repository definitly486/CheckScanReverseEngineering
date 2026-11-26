package defpackage;

import java.lang.annotation.Annotation;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class kl9 implements mp7 {
    public final String a;
    public final mp7 b;

    public kl9(String str, mp7 mp7Var) {
        mp7Var.getClass();
        this.a = str;
        this.b = mp7Var;
    }

    @Override // defpackage.mp7
    public final boolean b() {
        return this.b.b();
    }

    @Override // defpackage.mp7
    public final int c(String str) {
        str.getClass();
        return this.b.c(str);
    }

    @Override // defpackage.mp7
    public final mp7 d(int i) {
        return this.b.d(i);
    }

    @Override // defpackage.mp7
    public final int e() {
        return this.b.e();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kl9)) {
            return false;
        }
        kl9 kl9Var = (kl9) obj;
        return this.a.equals(kl9Var.a) && aa4.e(this.b, kl9Var.b);
    }

    @Override // defpackage.mp7
    public final String f(int i) {
        return this.b.f(i);
    }

    @Override // defpackage.mp7
    public final List<Annotation> g(int i) {
        return this.b.g(i);
    }

    @Override // defpackage.mp7
    public final List<Annotation> getAnnotations() {
        return this.b.getAnnotations();
    }

    @Override // defpackage.mp7
    public final sp7 getKind() {
        return this.b.getKind();
    }

    @Override // defpackage.mp7
    public final String h() {
        return this.a;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    @Override // defpackage.mp7
    public final boolean i(int i) {
        return this.b.i(i);
    }

    @Override // defpackage.mp7
    public final boolean isInline() {
        return this.b.isInline();
    }

    public final String toString() {
        return x97.b(this);
    }
}
