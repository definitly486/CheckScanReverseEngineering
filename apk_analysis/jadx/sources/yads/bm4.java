package yads;

import android.view.TextureView;

/* JADX INFO: loaded from: classes6.dex */
public final class bm4 {
    public final gr2 a;

    public bm4(gr2 gr2Var) {
        this.a = gr2Var;
    }

    public final void a(am4 am4Var) {
        TextureView textureView = am4Var.b;
        this.a.a(textureView);
        textureView.setVisibility(0);
        am4Var.c.setVisibility(0);
        am4Var.a.setVisibility(0);
    }

    public final void b(am4 am4Var) {
        TextureView textureView = am4Var.b;
        this.a.a((TextureView) null);
        textureView.setVisibility(8);
        am4Var.c.setVisibility(8);
        am4Var.a.setVisibility(8);
    }
}
