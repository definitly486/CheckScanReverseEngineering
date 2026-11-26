package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class ds3 implements ha3 {
    public final /* synthetic */ jb4 a;
    public final /* synthetic */ ks3 b;
    public final /* synthetic */ vb4 c;

    public ds3(jb4 jb4Var, ks3 ks3Var, vb4 vb4Var) {
        this.a = jb4Var;
        this.b = ks3Var;
        this.c = vb4Var;
    }

    @Override // yads.ha3
    public final void a(String str) throws fb4 {
        if (this.b.d.a(this.c, str)) {
            return;
        }
        this.a.c(str);
    }

    @Override // yads.ha3
    public final void a(boolean z) {
        this.a.a(z);
    }

    @Override // yads.ha3
    public final void a() {
        this.a.a();
    }

    @Override // yads.ha3
    public final void a(vb4 vb4Var, Map map) {
        this.a.a(vb4Var, map);
    }
}
