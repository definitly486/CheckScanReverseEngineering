package yads;

import android.text.TextPaint;
import android.text.style.ForegroundColorSpan;

/* JADX INFO: loaded from: classes6.dex */
public final class wv5 extends ForegroundColorSpan {
    public wv5(int i) {
        super(i);
    }

    @Override // android.text.style.ForegroundColorSpan, android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.setShader(null);
    }
}
