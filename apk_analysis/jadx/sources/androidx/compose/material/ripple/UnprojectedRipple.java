package androidx.compose.material.ripple;

import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;

/* JADX INFO: loaded from: classes.dex */
final class UnprojectedRipple extends RippleDrawable {
    private final boolean bounded;
    private boolean projected;
    private Color rippleColor;

    public UnprojectedRipple(boolean z) {
        super(ColorStateList.valueOf(-16777216), null, z ? new ColorDrawable(-1) : null);
        this.bounded = z;
    }

    /* JADX INFO: renamed from: calculateRippleColor-5vOe2sY, reason: not valid java name */
    private final long m3068calculateRippleColor5vOe2sY(long j, float f) {
        if (Build.VERSION.SDK_INT < 28) {
            f *= 2.0f;
        }
        return Color.m6231copywmQWz5c$default(j, f > 1.0f ? 1.0f : f, 0.0f, 0.0f, 0.0f, 14, null);
    }

    @Override // android.graphics.drawable.RippleDrawable, android.graphics.drawable.Drawable
    public Rect getDirtyBounds() {
        if (!this.bounded) {
            this.projected = true;
        }
        Rect dirtyBounds = super.getDirtyBounds();
        this.projected = false;
        return dirtyBounds;
    }

    @Override // android.graphics.drawable.RippleDrawable, android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public boolean isProjected() {
        return this.projected;
    }

    /* JADX INFO: renamed from: setColor-DxMtmZc, reason: not valid java name */
    public final void m3069setColorDxMtmZc(long j, float f) {
        long jM3068calculateRippleColor5vOe2sY = m3068calculateRippleColor5vOe2sY(j, f);
        Color color = this.rippleColor;
        if (color == null ? false : Color.m6233equalsimpl0(color.m6242unboximpl(), jM3068calculateRippleColor5vOe2sY)) {
            return;
        }
        this.rippleColor = Color.m6222boximpl(jM3068calculateRippleColor5vOe2sY);
        setColor(ColorStateList.valueOf(ColorKt.m6286toArgb8_81llA(jM3068calculateRippleColor5vOe2sY)));
    }
}
