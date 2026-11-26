package yads;

import android.widget.ImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class xc6 implements f00 {
    public final am4 a;
    public final p90 b;

    public xc6(am4 am4Var, p90 p90Var) {
        this.a = am4Var;
        this.b = p90Var;
    }

    @Override // yads.f00
    public final void a(ot3 ot3Var, h00 h00Var) {
        oz ozVar = new oz(this.a.getContext(), new wc6(ot3Var, h00Var, this.b));
        am4 am4Var = this.a;
        am4Var.setOnTouchListener(ozVar);
        am4Var.setOnClickListener(ozVar);
        ImageView imageView = this.a.a.b;
        if (imageView != null) {
            imageView.setOnTouchListener(ozVar);
            imageView.setOnClickListener(ozVar);
        }
    }
}
