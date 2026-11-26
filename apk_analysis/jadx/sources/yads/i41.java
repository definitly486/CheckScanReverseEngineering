package yads;

import android.text.TextPaint;
import android.text.style.UnderlineSpan;

/* JADX INFO: loaded from: classes6.dex */
public final class i41 extends UnderlineSpan {
    public final o92 b;
    public final h92 c;

    public i41(o92 o92Var, h92 h92Var) {
        this.b = o92Var;
        this.c = h92Var;
    }

    @Override // android.text.style.UnderlineSpan, android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        textPaint.setUnderlineText(false);
    }
}
