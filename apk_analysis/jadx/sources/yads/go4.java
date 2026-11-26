package yads;

import android.text.TextPaint;
import android.text.style.StrikethroughSpan;

/* JADX INFO: loaded from: classes6.dex */
public final class go4 extends StrikethroughSpan {
    @Override // android.text.style.StrikethroughSpan, android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        textPaint.setStrikeThruText(false);
    }
}
