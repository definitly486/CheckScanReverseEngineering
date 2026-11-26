package defpackage;

import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public final class ac9<K, A> extends ld0<K, A> {
    public final A i;

    public ac9(by4<A> by4Var, A a) {
        super(Collections.EMPTY_LIST);
        k(by4Var);
        this.i = a;
    }

    @Override // defpackage.ld0
    public final float c() {
        return 1.0f;
    }

    @Override // defpackage.ld0
    public final A f() {
        by4<A> by4Var = this.e;
        A a = this.i;
        float f = this.d;
        return by4Var.b(0.0f, 0.0f, a, a, f, f, f);
    }

    @Override // defpackage.ld0
    public final A g(vf4<K> vf4Var, float f) {
        return f();
    }

    @Override // defpackage.ld0
    public final void i() {
        if (this.e != null) {
            super.i();
        }
    }

    @Override // defpackage.ld0
    public final void j(float f) {
        this.d = f;
    }
}
