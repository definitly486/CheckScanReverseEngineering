package yads;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.LineBackgroundSpan;
import androidx.core.util.Pools;
import defpackage.ws6;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes6.dex */
public final class n96 extends CharacterStyle implements LineBackgroundSpan {
    public static final Pools.SimplePool h = new Pools.SimplePool(16);
    public final int b;
    public final iw5 c;
    public final ws6 d;
    public final Paint.FontMetricsInt e = new Paint.FontMetricsInt();
    public final LinkedList f = new LinkedList();
    public boolean g;

    public n96(int i, iw5 iw5Var, ws6 ws6Var) {
        this.b = i;
        this.c = iw5Var;
        this.d = ws6Var;
    }

    @Override // android.text.style.LineBackgroundSpan
    public final void drawBackground(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, int i8) {
        if (this.g) {
            this.f.clear();
        }
        this.g = false;
        Spanned spanned = charSequence instanceof Spanned ? (Spanned) charSequence : null;
        if (spanned == null) {
            return;
        }
        int spanStart = spanned.getSpanStart(this);
        if (i6 > spanned.getSpanEnd(this) || spanStart > i7) {
            return;
        }
        Layout layout = (Layout) this.d.get();
        int iB = i8 == layout.getLineCount() - 1 ? 0 : defpackage.w65.b(layout.getSpacingAdd());
        int[] iArr = (int[]) h.acquire();
        if (iArr == null) {
            iArr = new int[2];
        }
        iArr[0] = i3 - i4;
        iArr[1] = (i5 - i4) - iB;
        this.f.add(iArr);
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        this.g = true;
        if (this.f.isEmpty()) {
            return;
        }
        int[] iArr = (int[]) this.f.remove();
        int i = iArr[0];
        int i2 = iArr[1];
        h.release(iArr);
        int i3 = this.b;
        if (i3 > 0) {
            textPaint.setTextSize(i3);
        }
        textPaint.getFontMetricsInt(this.e);
        int iOrdinal = this.c.ordinal();
        if (iOrdinal == 0) {
            textPaint.baselineShift = (i - this.e.ascent) + textPaint.baselineShift;
        } else {
            if (iOrdinal != 1) {
                if (iOrdinal != 3) {
                    return;
                }
                textPaint.baselineShift = (i2 - this.e.descent) + textPaint.baselineShift;
                return;
            }
            Paint.FontMetricsInt fontMetricsInt = this.e;
            textPaint.baselineShift = (((i + i2) / 2) - ((fontMetricsInt.ascent + fontMetricsInt.descent) / 2)) + textPaint.baselineShift;
        }
    }
}
