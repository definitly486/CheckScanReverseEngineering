package yads;

import java.util.ArrayList;
import yads.zn2;

/* JADX INFO: loaded from: classes6.dex */
public final class zn2 implements ys4, at4 {
    public final ys4 a;
    public final ArrayList b = new ArrayList();
    public final et4 c = new et4() { // from class: una
        @Override // yads.et4
        public final void b(Exception exc) {
            zn2.a(this.b, exc);
        }
    };

    public zn2(ys4 ys4Var) {
        this.a = ys4Var;
    }

    public static final void a(zn2 zn2Var, Exception exc) {
        zn2Var.b.add(exc);
        zn2Var.a.a().b(exc);
    }

    @Override // yads.ys4
    public final pv5 b() {
        return this.a.b();
    }

    @Override // yads.at4
    public final ys4 c() {
        return this.a;
    }

    @Override // yads.ys4
    public final boolean d() {
        return this.a.d();
    }

    @Override // yads.ys4
    public final et4 a() {
        return this.c;
    }
}
