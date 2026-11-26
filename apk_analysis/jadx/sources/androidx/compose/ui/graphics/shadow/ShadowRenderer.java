package androidx.compose.ui.graphics.shadow;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.me0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ShadowRenderer {
    public static final int $stable = 8;
    private final Outline outline;
    private Path path;
    private ColorFilter shadowTint;
    private long shadowTintColor = Color.Companion.m6268getUnspecified0d7_KjU();
    private long cornerRadius = CornerRadius.Companion.m5959getZerokKHJgLs();
    private long generatedSize = Size.Companion.m6064getUnspecifiedNHjbRc();
    private LayoutDirection generatedLayoutDirection = LayoutDirection.Ltr;
    private float generatedDensity = 1.0f;

    public ShadowRenderer(Outline outline) {
        this.outline = outline;
    }

    /* JADX INFO: renamed from: obtainTint-8_81llA, reason: not valid java name */
    private final ColorFilter m6954obtainTint8_81llA(long j) {
        ColorFilter colorFilter = this.shadowTint;
        if (colorFilter != null && Color.m6233equalsimpl0(this.shadowTintColor, j)) {
            return colorFilter;
        }
        ColorFilter colorFilterM6273tintxETnrds$default = ColorFilter.Companion.m6273tintxETnrds$default(ColorFilter.Companion, j, 0, 2, null);
        this.shadowTintColor = j;
        this.shadowTint = colorFilterM6273tintxETnrds$default;
        return colorFilterM6273tintxETnrds$default;
    }

    private final void updateParamsFromOutline(Outline outline) {
        if (outline instanceof Outline.Generic) {
            this.path = ((Outline.Generic) outline).getPath();
            this.cornerRadius = CornerRadius.Companion.m5959getZerokKHJgLs();
            return;
        }
        if (!(outline instanceof Outline.Rounded)) {
            if (!(outline instanceof Outline.Rectangle)) {
                me0.e();
                return;
            } else {
                this.path = null;
                this.cornerRadius = CornerRadius.Companion.m5959getZerokKHJgLs();
                return;
            }
        }
        Outline.Rounded rounded = (Outline.Rounded) outline;
        if (RoundRectKt.isSimple(rounded.getRoundRect())) {
            this.path = null;
            this.cornerRadius = rounded.getRoundRect().m6037getTopLeftCornerRadiuskKHJgLs();
        } else {
            this.path = rounded.getRoundRectPath$ui_graphics();
            this.cornerRadius = CornerRadius.Companion.m5959getZerokKHJgLs();
        }
    }

    /* JADX INFO: renamed from: buildShadow-_SMYjrA */
    public abstract void mo6944buildShadow_SMYjrA(DrawScope drawScope, long j, long j2, Path path);

    /* JADX INFO: renamed from: drawShadow-erFMhIw, reason: not valid java name */
    public final void m6955drawShadowerFMhIw(DrawScope drawScope, ColorFilter colorFilter, long j, long j2, Brush brush, float f, int i) {
        updateParamsFromOutline(this.outline);
        if (colorFilter == null) {
            colorFilter = (brush != null || j2 == 16) ? null : m6954obtainTint8_81llA(j2);
        }
        ColorFilter colorFilter2 = colorFilter;
        long j3 = this.generatedSize;
        if (j3 == InlineClassHelperKt.UnspecifiedPackedFloats || !Size.m6052equalsimpl0(j3, j) || this.generatedLayoutDirection != drawScope.getLayoutDirection() || this.generatedDensity != drawScope.getDensity()) {
            mo6944buildShadow_SMYjrA(drawScope, j, this.cornerRadius, this.path);
            this.generatedSize = j;
            this.generatedLayoutDirection = drawScope.getLayoutDirection();
            this.generatedDensity = drawScope.getDensity();
        }
        mo6945onDrawShadowMLmccfk(drawScope, j, this.cornerRadius, this.path, f, colorFilter2, brush, i);
    }

    public final Outline getOutline() {
        return this.outline;
    }

    public void invalidateShadow() {
        this.generatedSize = Size.Companion.m6064getUnspecifiedNHjbRc();
        this.generatedLayoutDirection = LayoutDirection.Ltr;
        this.generatedDensity = 1.0f;
    }

    /* JADX INFO: renamed from: onDrawShadow-MLmccfk */
    public abstract void mo6945onDrawShadowMLmccfk(DrawScope drawScope, long j, long j2, Path path, float f, ColorFilter colorFilter, Brush brush, int i);
}
