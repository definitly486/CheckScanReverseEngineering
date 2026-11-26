package yads;

import android.content.Context;
import android.view.TextureView;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class am4 extends FrameLayout {
    public final xd6 a;
    public final TextureView b;
    public final sk4 c;
    public jl4 d;
    public wx3 e;

    public am4(Context context, xd6 xd6Var, TextureView textureView, sk4 sk4Var) {
        uk5 uk5Var = new uk5();
        super(context);
        this.a = xd6Var;
        this.b = textureView;
        this.c = sk4Var;
        this.e = uk5Var;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        jl4 jl4Var = this.d;
        if (jl4Var != null) {
            bl4 bl4Var = (bl4) jl4Var;
            bl4Var.a.a(bl4Var.b.b);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        jl4 jl4Var = this.d;
        if (jl4Var != null) {
            bl4 bl4Var = (bl4) jl4Var;
            bl4Var.b.a.a.clearAnimation();
            bl4Var.a.a((TextureView) null);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        vx3 vx3VarA = this.e.a(i, i2);
        super.onMeasure(vx3VarA.a, vx3VarA.b);
    }

    public final void setAspectRatio(float f) {
        this.e = new l25(f);
    }

    public final void setOnAttachStateChangeListener(jl4 jl4Var) {
        this.d = jl4Var;
    }
}
