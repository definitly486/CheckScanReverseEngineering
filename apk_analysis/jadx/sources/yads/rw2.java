package yads;

import android.view.View;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class rw2 extends rf6 {
    public final hc3 c;
    public final defpackage.y22 d;
    public defpackage.mb4 e;

    public rw2(ImageView imageView, hc3 hc3Var, defpackage.y22 y22Var) {
        super(imageView);
        this.c = hc3Var;
        this.d = y22Var;
    }

    @Override // yads.rf6
    public final /* bridge */ /* synthetic */ boolean a(View view, Object obj) {
        return true;
    }

    @Override // yads.rf6
    public final void b(View view, Object obj) {
        ImageView imageView = (ImageView) view;
        rd3 rd3Var = ((mw2) obj).a;
        if (rd3Var == null) {
            return;
        }
        imageView.setForeground(null);
        imageView.setBackground(null);
        defpackage.mb4 mb4Var = this.e;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.e = defpackage.av0.c(this.d, null, null, new qw2(this, rd3Var, null), 3);
    }
}
