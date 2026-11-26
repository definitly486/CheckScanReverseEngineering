package yads;

import android.graphics.Canvas;
import android.text.Layout;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ab2 {
    public static int a(Layout layout, int i) {
        int lineBottom = layout.getLineBottom(i);
        boolean z = i == layout.getLineCount() - 1;
        float spacingAdd = layout.getSpacingAdd();
        float spacingMultiplier = layout.getSpacingMultiplier();
        if ((spacingAdd != 0.0f || spacingMultiplier != 1.0f) && !z) {
            if (Float.compare(spacingMultiplier, 1.0f) != 0) {
                float lineTop = layout.getLineTop(i + 1) - layout.getLineTop(i);
                spacingAdd = lineTop - ((lineTop - spacingAdd) / spacingMultiplier);
            }
            lineBottom = (int) (lineBottom - spacingAdd);
        }
        return i == layout.getLineCount() - 1 ? lineBottom - layout.getBottomPadding() : lineBottom;
    }

    public abstract void a(Canvas canvas, Layout layout, int i, int i2, int i3, int i4, o92 o92Var, h92 h92Var);
}
