package androidx.compose.material.ripple;

import defpackage.jn;
import defpackage.js2;

/* JADX INFO: loaded from: classes.dex */
public final class RippleAlpha {
    public static final int $stable = 0;
    private final float draggedAlpha;
    private final float focusedAlpha;
    private final float hoveredAlpha;
    private final float pressedAlpha;

    public RippleAlpha(float f, float f2, float f3, float f4) {
        this.draggedAlpha = f;
        this.focusedAlpha = f2;
        this.hoveredAlpha = f3;
        this.pressedAlpha = f4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RippleAlpha)) {
            return false;
        }
        RippleAlpha rippleAlpha = (RippleAlpha) obj;
        return this.draggedAlpha == rippleAlpha.draggedAlpha && this.focusedAlpha == rippleAlpha.focusedAlpha && this.hoveredAlpha == rippleAlpha.hoveredAlpha && this.pressedAlpha == rippleAlpha.pressedAlpha;
    }

    public final float getDraggedAlpha() {
        return this.draggedAlpha;
    }

    public final float getFocusedAlpha() {
        return this.focusedAlpha;
    }

    public final float getHoveredAlpha() {
        return this.hoveredAlpha;
    }

    public final float getPressedAlpha() {
        return this.pressedAlpha;
    }

    public int hashCode() {
        return Float.hashCode(this.pressedAlpha) + jn.b(this.hoveredAlpha, jn.b(this.focusedAlpha, Float.hashCode(this.draggedAlpha) * 31, 31), 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("RippleAlpha(draggedAlpha=");
        sb.append(this.draggedAlpha);
        sb.append(", focusedAlpha=");
        sb.append(this.focusedAlpha);
        sb.append(", hoveredAlpha=");
        sb.append(this.hoveredAlpha);
        sb.append(", pressedAlpha=");
        return js2.b(sb, this.pressedAlpha, ')');
    }
}
