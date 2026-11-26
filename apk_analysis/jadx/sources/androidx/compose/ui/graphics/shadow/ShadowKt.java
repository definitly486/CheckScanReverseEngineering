package androidx.compose.ui.graphics.shadow;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Interpolatable;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.util.MathHelpersKt;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class ShadowKt {
    public static final Shadow lerp(Shadow shadow, Shadow shadow2, float f) {
        if (shadow == null && shadow2 == null) {
            return null;
        }
        if (shadow != null) {
            return shadow2 == null ? lerpNonNull(shadow, shadow.transparentCopy$ui_graphics(), f) : lerpNonNull(shadow, shadow2, f);
        }
        shadow2.getClass();
        return lerpNonNull(shadow2.transparentCopy$ui_graphics(), shadow2, f);
    }

    public static final Shadow lerpNonNull(Shadow shadow, Shadow shadow2, float f) {
        float fM9085lerpMdfbLM = DpKt.m9085lerpMdfbLM(shadow.m6952getRadiusD9Ej5fM(), shadow2.m6952getRadiusD9Ej5fM(), f);
        float fM9085lerpMdfbLM2 = DpKt.m9085lerpMdfbLM(shadow.m6953getSpreadD9Ej5fM(), shadow2.m6953getSpreadD9Ej5fM(), f);
        long jM9086lerpxhh869w = DpKt.m9086lerpxhh869w(shadow.m6951getOffsetRKDOV3M(), shadow2.m6951getOffsetRKDOV3M(), f);
        long jM6283lerpjxsXWHM = ColorKt.m6283lerpjxsXWHM(shadow.m6950getColor0d7_KjU(), shadow2.m6950getColor0d7_KjU(), f);
        Object objLerp = Interpolatable.Companion.lerp(shadow.getBrush(), shadow2.getBrush(), f);
        return new Shadow(fM9085lerpMdfbLM, fM9085lerpMdfbLM2, jM9086lerpxhh869w, jM6283lerpjxsXWHM, objLerp instanceof Brush ? (Brush) objLerp : null, MathHelpersKt.lerp(shadow.getAlpha(), shadow2.getAlpha(), f), f < 0.5f ? shadow.m6949getBlendMode0nO6VwU() : shadow2.m6949getBlendMode0nO6VwU(), (jh2) null);
    }
}
