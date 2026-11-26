package androidx.compose.foundation.text;

import androidx.compose.ui.unit.IntOffset;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class TextRangeLayoutMeasureResult {
    public static final int $stable = 0;
    private final int height;
    private final ll3<IntOffset> place;
    private final int width;

    public TextRangeLayoutMeasureResult(int i, int i2, ll3<IntOffset> ll3Var) {
        this.width = i;
        this.height = i2;
        this.place = ll3Var;
    }

    public final int getHeight() {
        return this.height;
    }

    public final ll3<IntOffset> getPlace() {
        return this.place;
    }

    public final int getWidth() {
        return this.width;
    }
}
