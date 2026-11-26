package androidx.window.layout.util;

import android.graphics.Point;
import android.view.Display;

/* JADX INFO: loaded from: classes3.dex */
public final class DisplayHelper {
    public static final DisplayHelper INSTANCE = new DisplayHelper();

    private DisplayHelper() {
    }

    public final Point getRealSizeForDisplay(Display display) {
        display.getClass();
        Point point = new Point();
        display.getRealSize(point);
        return point;
    }
}
