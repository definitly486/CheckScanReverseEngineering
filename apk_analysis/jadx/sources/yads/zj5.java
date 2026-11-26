package yads;

import android.text.TextPaint;
import android.text.style.CharacterStyle;

/* JADX INFO: loaded from: classes6.dex */
public final class zj5 extends CharacterStyle {
    public final yj5 a;

    public zj5(yj5 yj5Var) {
        this.a = yj5Var;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        yj5 yj5Var = this.a;
        if (textPaint != null) {
            textPaint.setShadowLayer(yj5Var.c, yj5Var.a, yj5Var.b, yj5Var.d);
        }
    }
}
