package yads;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public final class v40 implements on0 {
    public final on0[] a;

    public v40(on0... on0VarArr) {
        this.a = on0VarArr;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        for (on0 on0Var : this.a) {
            on0Var.a(viewGroup);
        }
    }

    @Override // yads.on0
    public final void c() {
        for (on0 on0Var : this.a) {
            on0Var.c();
        }
    }
}
