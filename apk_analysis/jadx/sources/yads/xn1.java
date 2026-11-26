package yads;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class xn1 implements id1 {
    public final vn1 a;
    public final zn1 b;

    public xn1(vn1 vn1Var) {
        zn1 zn1Var = new zn1();
        this.a = vn1Var;
        this.b = zn1Var;
    }

    @Override // yads.id1
    public final void a(vq0 vq0Var, View view, p41 p41Var) {
        Context context = view.getContext();
        yn1 yn1VarA = this.b.a(p41Var);
        if (yn1VarA != null) {
            oz ozVar = new oz(context, new wn1(this.a, yn1VarA));
            view.setOnTouchListener(ozVar);
            view.setOnClickListener(ozVar);
        }
    }

    @Override // yads.id1
    public final boolean a(p41 p41Var) {
        return this.b.a(p41Var) != null;
    }

    @Override // yads.id1
    public final void a(vq0 vq0Var, View view) {
        view.setOnTouchListener(null);
        view.setOnClickListener(null);
    }
}
