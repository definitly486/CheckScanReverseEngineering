package yads;

import android.text.TextPaint;
import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class f82 implements View.OnLayoutChangeListener {
    public final /* synthetic */ zo1 b;
    public final /* synthetic */ u35 c;
    public final /* synthetic */ p35 d;
    public final /* synthetic */ p35 e;
    public final /* synthetic */ List f;
    public final /* synthetic */ g82 g;

    public f82(zo1 zo1Var, u35 u35Var, p35 p35Var, p35 p35Var2, List list, g82 g82Var) {
        this.b = zo1Var;
        this.c = u35Var;
        this.d = p35Var;
        this.e = p35Var2;
        this.f = list;
        this.g = g82Var;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.removeOnLayoutChangeListener(this);
        TextPaint paint = this.b.getPaint();
        int i9 = v35.g;
        paint.setShader(q35.a(this.c, this.d, this.e, defpackage.qn1.s0(this.f), g82.a(this.g, this.b), (this.b.getHeight() - this.b.getPaddingBottom()) - this.b.getPaddingTop()));
        this.b.invalidate();
    }
}
