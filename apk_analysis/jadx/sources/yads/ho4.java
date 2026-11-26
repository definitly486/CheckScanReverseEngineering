package yads;

import android.text.TextPaint;
import android.text.style.UnderlineSpan;

/* JADX INFO: loaded from: classes6.dex */
public final class ho4 extends UnderlineSpan {
    @Override // android.text.style.UnderlineSpan, android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        textPaint.setUnderlineText(false);
    }
}
