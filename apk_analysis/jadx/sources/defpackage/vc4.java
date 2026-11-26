package defpackage;

import java.lang.annotation.Annotation;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class vc4 implements mp7 {
    public final fh8 a;

    public vc4(ll3<? extends mp7> ll3Var) {
        this.a = new fh8(ll3Var);
    }

    public final mp7 a() {
        return (mp7) this.a.getValue();
    }

    @Override // defpackage.mp7
    public final int c(String str) {
        str.getClass();
        return a().c(str);
    }

    @Override // defpackage.mp7
    public final mp7 d(int i) {
        return a().d(i);
    }

    @Override // defpackage.mp7
    public final int e() {
        return a().e();
    }

    @Override // defpackage.mp7
    public final String f(int i) {
        return a().f(i);
    }

    @Override // defpackage.mp7
    public final List<Annotation> g(int i) {
        return a().g(i);
    }

    @Override // defpackage.mp7
    public final sp7 getKind() {
        return a().getKind();
    }

    @Override // defpackage.mp7
    public final String h() {
        return a().h();
    }

    @Override // defpackage.mp7
    public final boolean i(int i) {
        return a().i(i);
    }
}
