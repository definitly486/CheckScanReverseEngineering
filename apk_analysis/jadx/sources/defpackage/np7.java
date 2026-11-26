package defpackage;

import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class np7 implements mp7, ay0 {
    public final mp7 a;
    public final String b;
    public final Set<String> c;

    public np7(mp7 mp7Var) {
        mp7Var.getClass();
        this.a = mp7Var;
        this.b = mp7Var.h() + '?';
        this.c = m96.a(mp7Var);
    }

    @Override // defpackage.ay0
    public final Set<String> a() {
        return this.c;
    }

    @Override // defpackage.mp7
    public final boolean b() {
        return true;
    }

    @Override // defpackage.mp7
    public final int c(String str) {
        str.getClass();
        return this.a.c(str);
    }

    @Override // defpackage.mp7
    public final mp7 d(int i) {
        return this.a.d(i);
    }

    @Override // defpackage.mp7
    public final int e() {
        return this.a.e();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof np7) {
            return aa4.e(this.a, ((np7) obj).a);
        }
        return false;
    }

    @Override // defpackage.mp7
    public final String f(int i) {
        return this.a.f(i);
    }

    @Override // defpackage.mp7
    public final List<Annotation> g(int i) {
        return this.a.g(i);
    }

    @Override // defpackage.mp7
    public final List<Annotation> getAnnotations() {
        return this.a.getAnnotations();
    }

    @Override // defpackage.mp7
    public final sp7 getKind() {
        return this.a.getKind();
    }

    @Override // defpackage.mp7
    public final String h() {
        return this.b;
    }

    public final int hashCode() {
        return this.a.hashCode() * 31;
    }

    @Override // defpackage.mp7
    public final boolean i(int i) {
        return this.a.i(i);
    }

    @Override // defpackage.mp7
    public final boolean isInline() {
        return this.a.isInline();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append('?');
        return sb.toString();
    }
}
