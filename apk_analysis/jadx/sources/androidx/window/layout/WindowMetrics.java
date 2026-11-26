package androidx.window.layout;

import android.graphics.Rect;
import androidx.window.core.Bounds;
import defpackage.aa4;
import defpackage.js2;

/* JADX INFO: loaded from: classes3.dex */
public final class WindowMetrics {
    private final Bounds _bounds;
    private final float density;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WindowMetrics(Rect rect, float f) {
        this(new Bounds(rect), f);
        rect.getClass();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!WindowMetrics.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        WindowMetrics windowMetrics = (WindowMetrics) obj;
        return aa4.e(this._bounds, windowMetrics._bounds) && this.density == windowMetrics.density;
    }

    public final Rect getBounds() {
        return this._bounds.toRect();
    }

    public final float getDensity() {
        return this.density;
    }

    public final float getHeightDp() {
        return getBounds().height() / this.density;
    }

    public final float getWidthDp() {
        return getBounds().width() / this.density;
    }

    public int hashCode() {
        return Float.hashCode(this.density) + (this._bounds.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("WindowMetrics(_bounds=");
        sb.append(this._bounds);
        sb.append(", density=");
        return js2.b(sb, this.density, ')');
    }

    public WindowMetrics(Bounds bounds, float f) {
        bounds.getClass();
        this._bounds = bounds;
        this.density = f;
    }
}
