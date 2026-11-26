package yads;

import android.text.TextPaint;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class e82 implements View.OnLayoutChangeListener {
    public final /* synthetic */ zo1 b;
    public final /* synthetic */ long c;
    public final /* synthetic */ y30 d;
    public final /* synthetic */ g82 e;

    public e82(zo1 zo1Var, long j, y30 y30Var, g82 g82Var) {
        this.b = zo1Var;
        this.c = j;
        this.d = y30Var;
        this.e = g82Var;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.removeOnLayoutChangeListener(this);
        TextPaint paint = this.b.getPaint();
        int i9 = lt3.e;
        float f = this.c;
        y30 y30Var = this.d;
        paint.setShader(kt3.a(f, y30Var.a, y30Var.b, g82.a(this.e, this.b), (this.b.getHeight() - this.b.getPaddingBottom()) - this.b.getPaddingTop()));
        this.b.invalidate();
    }
}
