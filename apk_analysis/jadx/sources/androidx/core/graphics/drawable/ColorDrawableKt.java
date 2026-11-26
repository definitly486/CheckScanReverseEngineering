package androidx.core.graphics.drawable;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;

/* JADX INFO: loaded from: classes2.dex */
public final class ColorDrawableKt {
    public static final ColorDrawable toDrawable(Color color) {
        return new ColorDrawable(color.toArgb());
    }

    public static final ColorDrawable toDrawable(int i) {
        return new ColorDrawable(i);
    }
}
