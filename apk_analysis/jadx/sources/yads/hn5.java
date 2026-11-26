package yads;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class hn5 {
    public static int a(Drawable drawable) {
        Rect bounds;
        if (drawable == null || (bounds = drawable.getBounds()) == null) {
            return 0;
        }
        return bounds.height();
    }

    public static int b(Drawable drawable) {
        Rect bounds;
        if (drawable == null || (bounds = drawable.getBounds()) == null) {
            return 0;
        }
        return bounds.width();
    }
}
