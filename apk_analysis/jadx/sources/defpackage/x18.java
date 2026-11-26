package defpackage;

import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;

/* JADX INFO: loaded from: classes2.dex */
public final class x18 extends CharacterStyle implements UpdateAppearance {
    public final float b;

    public x18(float f) {
        this.b = f;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        textPaint.getClass();
        textPaint.setTextSize(this.b);
    }
}
