package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.ArcAnimationSpec;
import androidx.compose.animation.core.ArcMode;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SnapSpec;
import androidx.compose.animation.core.TargetBasedAnimation;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextMeasurer;
import androidx.compose.ui.text.TextPainterKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.av0;
import defpackage.jh2;
import defpackage.n1;
import defpackage.u96;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LookaheadAnimationVisualDebugHelper {
    public static final int $stable = 8;
    private final Path centerPath;
    private final List<Color> colors;
    private long debugOffset;
    private final Path debugPath;
    private boolean isProgressAnimationRunning;
    private long sharedTransitionScopeOffset;
    private long sharedTransitionScopeSize;
    private final Animatable<Float, AnimationVector1D> reverseProgress = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
    private final Animatable<Float, AnimationVector1D> restartProgress = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);

    public LookaheadAnimationVisualDebugHelper() {
        Offset.Companion companion = Offset.Companion;
        this.sharedTransitionScopeOffset = companion.m6003getZeroF1C5BW0();
        this.sharedTransitionScopeSize = IntSize.Companion.m9218getZeroYbymL2g();
        this.debugOffset = companion.m6003getZeroF1C5BW0();
        this.debugPath = AndroidPath_androidKt.Path();
        this.centerPath = AndroidPath_androidKt.Path();
        this.colors = u96.i(Color.m6222boximpl(ColorKt.Color(4293542709L)), Color.m6222boximpl(ColorKt.Color(4294086695L)), Color.m6222boximpl(ColorKt.Color(4291905755L)), Color.m6222boximpl(ColorKt.Color(4282549748L)), Color.m6222boximpl(ColorKt.Color(4282038458L)));
    }

    public static /* synthetic */ void calculatePath$animation$default(LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper, FiniteAnimationSpec finiteAnimationSpec, Rect rect, Rect rect2, Rect rect3, int i, Object obj) {
        if ((i & 8) != 0) {
            rect3 = RectKt.m6026Rect3MmeM6k(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), 0.0f);
        }
        lookaheadAnimationVisualDebugHelper.calculatePath$animation(finiteAnimationSpec, rect, rect2, rect3);
    }

    private final void calculatePathCenter(float f) {
        this.centerPath.rewind();
        Path path = this.centerPath;
        float f2 = -f;
        path.moveTo(0.0f, f2);
        path.lineTo(f, 0.0f);
        path.lineTo(0.0f, f);
        path.lineTo(f2, 0.0f);
        path.close();
    }

    /* JADX INFO: renamed from: findPositionAlongPerimeter-tuRUvjQ, reason: not valid java name */
    private final long m1124findPositionAlongPerimetertuRUvjQ(float f) {
        long j = this.sharedTransitionScopeSize;
        float f2 = (int) (j >> 32);
        float f3 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        if (f <= f2) {
            return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        if (f <= f2 + f3) {
            return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f - f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        float f4 = f2 * 2.0f;
        float f5 = f4 + f3;
        if (f <= f5) {
            return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f5 - f)) << 32) | (((long) Float.floatToRawIntBits(f3)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(((f3 * 2.0f) + f4) - f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public static /* synthetic */ void getColors$annotations() {
    }

    public final void calculatePath$animation(FiniteAnimationSpec<Rect> finiteAnimationSpec, Rect rect, Rect rect2, Rect rect3) {
        long j;
        this.debugPath.rewind();
        if ((finiteAnimationSpec instanceof TweenSpec) || (finiteAnimationSpec instanceof SnapSpec) || ((finiteAnimationSpec instanceof ArcAnimationSpec) && ArcMode.m1206equalsimpl0(((ArcAnimationSpec) finiteAnimationSpec).m1202getMode9TMq4(), ArcMode.Companion.m1212getArcLinear9TMq4()))) {
            this.debugPath.moveTo(Float.intBitsToFloat((int) (rect.m6017getCenterF1C5BW0() >> 32)), Float.intBitsToFloat((int) (rect.m6017getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
            this.debugPath.lineTo(Float.intBitsToFloat((int) (rect2.m6017getCenterF1C5BW0() >> 32)), Float.intBitsToFloat((int) (rect2.m6017getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
            this.debugPath.mo6124translatek4lQ0M(Offset.m5979constructorimpl(rect.m6017getCenterF1C5BW0() ^ (-9223372034707292160L)));
            this.debugOffset = Offset.m5991minusMKHz9U(rect2.m6017getCenterF1C5BW0(), rect.m6017getCenterF1C5BW0());
            return;
        }
        TargetBasedAnimation TargetBasedAnimation = AnimationKt.TargetBasedAnimation(finiteAnimationSpec, VectorConvertersKt.getVectorConverter(Rect.Companion), rect, rect2, rect3);
        long durationNanos = TargetBasedAnimation.getDurationNanos();
        Rect rect4 = (Rect) TargetBasedAnimation.getValueFromNanos(0L);
        int i = 0;
        while (true) {
            long jM6017getCenterF1C5BW0 = ((Rect) TargetBasedAnimation.getValueFromNanos(durationNanos - ((long) ((i / 399.0f) * durationNanos)))).m6017getCenterF1C5BW0();
            Path path = this.debugPath;
            if (i == 0) {
                j = -9223372034707292160L;
                path.moveTo(Float.intBitsToFloat((int) (jM6017getCenterF1C5BW0 >> 32)), Float.intBitsToFloat((int) (jM6017getCenterF1C5BW0 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
            } else {
                j = -9223372034707292160L;
                path.lineTo(Float.intBitsToFloat((int) (jM6017getCenterF1C5BW0 >> 32)), Float.intBitsToFloat((int) (jM6017getCenterF1C5BW0 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
            }
            if (i == 400) {
                this.debugPath.mo6124translatek4lQ0M(Offset.m5979constructorimpl(rect4.m6017getCenterF1C5BW0() ^ j));
                this.debugOffset = Offset.m5991minusMKHz9U(rect2.m6017getCenterF1C5BW0(), rect4.m6017getCenterF1C5BW0());
                return;
            }
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: chooseColor-vNxB06k$animation, reason: not valid java name */
    public final long m1125chooseColorvNxB06k$animation(Object obj) {
        if (LookaheadAnimationVisualDebugHelperKt.keyToColor.contains(obj)) {
            V v = LookaheadAnimationVisualDebugHelperKt.keyToColor.get(obj);
            v.getClass();
            return ((Color) v).m6242unboximpl();
        }
        if (LookaheadAnimationVisualDebugHelperKt.colorIndex >= this.colors.size()) {
            LookaheadAnimationVisualDebugHelperKt.colorIndex = 0;
        }
        long jM6242unboximpl = this.colors.get(LookaheadAnimationVisualDebugHelperKt.colorIndex).m6242unboximpl();
        LookaheadAnimationVisualDebugHelperKt.colorIndex++;
        LookaheadAnimationVisualDebugHelperKt.keyToColor.set(obj, Color.m6222boximpl(jM6242unboximpl));
        return jM6242unboximpl;
    }

    public final void drawGlobalVisualizations$animation(ContentDrawScope contentDrawScope) {
        long j = this.sharedTransitionScopeSize;
        Brush brushM6183radialGradientP_VxKs$default = Brush.Companion.m6183radialGradientP_VxKs$default(Brush.Companion, u96.i(Color.m6222boximpl(ColorKt.Color(4293542709L)), Color.m6222boximpl(ColorKt.Color(4282549748L)), Color.m6222boximpl(ColorKt.Color(4281641043L)), Color.m6222boximpl(ColorKt.Color(4294687748L)), Color.m6222boximpl(ColorKt.Color(4293542709L))), m1124findPositionAlongPerimetertuRUvjQ(this.restartProgress.getValue().floatValue() * ((((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * 2) + (((int) (j >> 32)) * 2))), 2000.0f, 0, 8, (Object) null);
        Canvas canvas = contentDrawScope.getDrawContext().getCanvas();
        Paint Paint = AndroidPaint_androidKt.Paint();
        brushM6183radialGradientP_VxKs$default.mo6177applyToPq9zytI(contentDrawScope.mo6806getSizeNHjbRc(), Paint, 1.0f);
        Paint.mo6112setStylek9PVt8s(PaintingStyle.Companion.m6514getStrokeTiuSbCo());
        Paint.setStrokeWidth(contentDrawScope.mo1434toPx0680j_4(Dp.m9042constructorimpl(4.0f)) + (this.reverseProgress.getValue().floatValue() * contentDrawScope.mo1434toPx0680j_4(Dp.m9042constructorimpl(8.0f))));
        canvas.save();
        canvas.translate(-Float.intBitsToFloat((int) (this.sharedTransitionScopeOffset >> 32)), -Float.intBitsToFloat((int) (this.sharedTransitionScopeOffset & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        long j2 = this.sharedTransitionScopeSize;
        canvas.drawRect(0.0f, 0.0f, (int) (j2 >> 32), (int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE), Paint);
        canvas.restore();
    }

    /* JADX INFO: renamed from: drawInactiveVisualizations-3IgeMak$animation, reason: not valid java name */
    public final void m1126drawInactiveVisualizations3IgeMak$animation(ContentDrawScope contentDrawScope, long j, boolean z, float f, Object obj, TextMeasurer textMeasurer) {
        long jColor;
        float f2 = f * 2.0f;
        Color.Companion companion = Color.Companion;
        if (Color.m6233equalsimpl0(j, companion.m6268getUnspecified0d7_KjU())) {
            DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, companion.m6269getWhite0d7_KjU(), 0L, 0L, 0.0f, new Stroke(f2, 0.0f, 0, 0, null, 30, null), null, 0, 110, null);
            jColor = ColorKt.Color(4288323750L);
        } else {
            jColor = j;
        }
        DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, jColor, 0L, 0L, 0.0f, new Stroke(f, 0.0f, 0, 0, null, 30, null), null, 0, 110, null);
        if (!z || textMeasurer == null) {
            return;
        }
        TextPainterKt.m8476drawTextd8rzKo(contentDrawScope, TextMeasurer.m8464measurewNUYSr0$default(textMeasurer, obj.toString(), new TextStyle(jColor, TextUnitKt.getSp(18), (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, Color.m6231copywmQWz5c$default(companion.m6269getWhite0d7_KjU(), 0.6f, 0.0f, 0.0f, 0.0f, 14, null), (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16775164, (jh2) null), 0, false, 0, 0L, null, null, null, false, 1020, null), (250 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : 0L, (250 & 4) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(10.0f)) << 32) | (((long) Float.floatToRawIntBits(10.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), (250 & 8) != 0 ? Float.NaN : 0.0f, (250 & 16) != 0 ? null : null, (250 & 32) != 0 ? null : null, (250 & 64) == 0 ? null : null, (250 & 128) != 0 ? DrawScope.Companion.m6808getDefaultBlendMode0nO6VwU() : 0);
    }

    /* JADX INFO: renamed from: drawLocalVisualizations-0XenJco$animation, reason: not valid java name */
    public final void m1127drawLocalVisualizations0XenJco$animation(ContentDrawScope contentDrawScope, long j, long j2, long j3, Rect rect, long j4, boolean z, float f, Object obj, TextMeasurer textMeasurer) throws Throwable {
        float f2;
        Object obj2;
        long jM1125chooseColorvNxB06k$animation;
        Color.Companion companion = Color.Companion;
        if (Color.m6233equalsimpl0(j, companion.m6267getTransparent0d7_KjU())) {
            return;
        }
        float f3 = f * 2.0f;
        if (Color.m6233equalsimpl0(j, companion.m6268getUnspecified0d7_KjU())) {
            DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, companion.m6269getWhite0d7_KjU(), 0L, 0L, 0.0f, new Stroke(f3, 0.0f, 0, 0, null, 30, null), null, 0, 110, null);
            int i = (int) (j2 >> 32);
            float fIntBitsToFloat = Float.intBitsToFloat(i) - Float.intBitsToFloat((int) (rect.m6022getTopLeftF1C5BW0() >> 32));
            int i2 = (int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            float fIntBitsToFloat2 = Float.intBitsToFloat(i2) - Float.intBitsToFloat((int) (rect.m6022getTopLeftF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            contentDrawScope.getDrawContext().getTransform().translate(fIntBitsToFloat, fIntBitsToFloat2);
            try {
                f2 = fIntBitsToFloat2;
                try {
                    DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, companion.m6269getWhite0d7_KjU(), 0L, j3, 0.0f, new Stroke(f3, 0.0f, 0, 0, null, 30, null), null, 0, 106, null);
                    contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat, -f2);
                    float fIntBitsToFloat3 = (Float.intBitsToFloat(i) - Float.intBitsToFloat((int) (rect.m6022getTopLeftF1C5BW0() >> 32))) - Float.intBitsToFloat((int) (this.debugOffset >> 32));
                    float fIntBitsToFloat4 = (Float.intBitsToFloat(i2) - Float.intBitsToFloat((int) (rect.m6022getTopLeftF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) - Float.intBitsToFloat((int) (this.debugOffset & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    contentDrawScope.getDrawContext().getTransform().translate(fIntBitsToFloat3, fIntBitsToFloat4);
                    try {
                        float fIntBitsToFloat5 = Float.intBitsToFloat((int) (j3 >> 32)) * 0.5f;
                        float fIntBitsToFloat6 = Float.intBitsToFloat((int) (j3 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * 0.5f;
                        contentDrawScope.getDrawContext().getTransform().translate(fIntBitsToFloat5, fIntBitsToFloat6);
                        try {
                            DrawScope.m6796drawPathLG529CI$default(contentDrawScope, this.debugPath, companion.m6269getWhite0d7_KjU(), 0.0f, new Stroke(f3, 0.0f, 0, 0, PathEffect.Companion.dashPathEffect$default(PathEffect.Companion, new float[]{20.0f, 10.0f}, 0.0f, 2, null), 14, null), null, 0, 52, null);
                            contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat5, -fIntBitsToFloat6);
                            contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat3, -fIntBitsToFloat4);
                            calculatePathCenter(3.5f * f);
                            float fIntBitsToFloat7 = Float.intBitsToFloat((int) (j4 >> 32));
                            float fIntBitsToFloat8 = Float.intBitsToFloat((int) (j4 & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            contentDrawScope.getDrawContext().getTransform().translate(fIntBitsToFloat7, fIntBitsToFloat8);
                            try {
                                DrawScope.m6796drawPathLG529CI$default(contentDrawScope, this.centerPath, companion.m6269getWhite0d7_KjU(), 0.0f, null, null, 0, 60, null);
                                contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat7, -fIntBitsToFloat8);
                                obj2 = obj;
                                jM1125chooseColorvNxB06k$animation = m1125chooseColorvNxB06k$animation(obj2);
                            } catch (Throwable th) {
                                contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat7, -fIntBitsToFloat8);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat5, -fIntBitsToFloat6);
                            throw th2;
                        }
                    } catch (Throwable th3) {
                        contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat3, -fIntBitsToFloat4);
                        throw th3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat, -f2);
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
                f2 = fIntBitsToFloat2;
            }
        } else {
            jM1125chooseColorvNxB06k$animation = j;
            obj2 = obj;
        }
        DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, jM1125chooseColorvNxB06k$animation, 0L, 0L, 0.0f, new Stroke(f, 0.0f, 0, 0, null, 30, null), null, 0, 110, null);
        int i3 = (int) (j2 >> 32);
        float fIntBitsToFloat9 = Float.intBitsToFloat(i3) - Float.intBitsToFloat((int) (rect.m6022getTopLeftF1C5BW0() >> 32));
        int i4 = (int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        float fIntBitsToFloat10 = Float.intBitsToFloat(i4) - Float.intBitsToFloat((int) (rect.m6022getTopLeftF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        contentDrawScope.getDrawContext().getTransform().translate(fIntBitsToFloat9, fIntBitsToFloat10);
        try {
            DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, jM1125chooseColorvNxB06k$animation, 0L, j3, 0.0f, new Stroke(f, 0.0f, 0, 0, null, 30, null), null, 0, 106, null);
            contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat9, -fIntBitsToFloat10);
            float fIntBitsToFloat11 = (Float.intBitsToFloat(i3) - Float.intBitsToFloat((int) (rect.m6022getTopLeftF1C5BW0() >> 32))) - Float.intBitsToFloat((int) (this.debugOffset >> 32));
            float fIntBitsToFloat12 = (Float.intBitsToFloat(i4) - Float.intBitsToFloat((int) (rect.m6022getTopLeftF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) - Float.intBitsToFloat((int) (this.debugOffset & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            contentDrawScope.getDrawContext().getTransform().translate(fIntBitsToFloat11, fIntBitsToFloat12);
            try {
                float fIntBitsToFloat13 = Float.intBitsToFloat((int) (j3 >> 32)) * 0.5f;
                float fIntBitsToFloat14 = Float.intBitsToFloat((int) (j3 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * 0.5f;
                contentDrawScope.getDrawContext().getTransform().translate(fIntBitsToFloat13, fIntBitsToFloat14);
                try {
                    long j5 = jM1125chooseColorvNxB06k$animation;
                    DrawScope.m6796drawPathLG529CI$default(contentDrawScope, this.debugPath, j5, 0.0f, new Stroke(f, 0.0f, 0, 0, PathEffect.Companion.dashPathEffect$default(PathEffect.Companion, new float[]{20.0f, 10.0f}, 0.0f, 2, null), 14, null), null, 0, 52, null);
                    contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat13, -fIntBitsToFloat14);
                    contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat11, -fIntBitsToFloat12);
                    calculatePathCenter(3.0f * f);
                    float fIntBitsToFloat15 = Float.intBitsToFloat((int) (j4 >> 32));
                    float fIntBitsToFloat16 = Float.intBitsToFloat((int) (j4 & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    contentDrawScope.getDrawContext().getTransform().translate(fIntBitsToFloat15, fIntBitsToFloat16);
                    try {
                        DrawScope.m6796drawPathLG529CI$default(contentDrawScope, this.centerPath, j5, 0.0f, null, null, 0, 60, null);
                        contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat15, -fIntBitsToFloat16);
                        if (!z || textMeasurer == null) {
                            return;
                        }
                        TextLayoutResult textLayoutResultM8464measurewNUYSr0$default = TextMeasurer.m8464measurewNUYSr0$default(textMeasurer, obj2.toString(), new TextStyle(j5, TextUnitKt.getSp(18), (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, Color.m6231copywmQWz5c$default(companion.m6269getWhite0d7_KjU(), 0.6f, 0.0f, 0.0f, 0.0f, 14, null), (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16775164, (jh2) null), 0, false, 0, 0L, null, null, null, false, 1020, null);
                        TextPainterKt.m8476drawTextd8rzKo(contentDrawScope, textLayoutResultM8464measurewNUYSr0$default, (250 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : 0L, (250 & 4) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(10.0f)) << 32) | (((long) Float.floatToRawIntBits(10.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), (250 & 8) != 0 ? Float.NaN : 0.0f, (250 & 16) != 0 ? null : null, (250 & 32) != 0 ? null : null, (250 & 64) == 0 ? null : null, (250 & 128) != 0 ? DrawScope.Companion.m6808getDefaultBlendMode0nO6VwU() : 0);
                        float fIntBitsToFloat17 = Float.intBitsToFloat(i3) - Float.intBitsToFloat((int) (rect.m6022getTopLeftF1C5BW0() >> 32));
                        float fIntBitsToFloat18 = Float.intBitsToFloat(i4) - Float.intBitsToFloat((int) (rect.m6022getTopLeftF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        contentDrawScope.getDrawContext().getTransform().translate(fIntBitsToFloat17, fIntBitsToFloat18);
                        try {
                            TextPainterKt.m8476drawTextd8rzKo(contentDrawScope, textLayoutResultM8464measurewNUYSr0$default, (250 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : 0L, (250 & 4) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(10.0f)) << 32) | (((long) Float.floatToRawIntBits(10.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), (250 & 8) != 0 ? Float.NaN : 0.0f, (250 & 16) != 0 ? null : null, (250 & 32) != 0 ? null : null, (250 & 64) == 0 ? null : null, (250 & 128) != 0 ? DrawScope.Companion.m6808getDefaultBlendMode0nO6VwU() : 0);
                        } finally {
                            contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat17, -fIntBitsToFloat18);
                        }
                    } catch (Throwable th6) {
                        contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat15, -fIntBitsToFloat16);
                        throw th6;
                    }
                } catch (Throwable th7) {
                    contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat13, -fIntBitsToFloat14);
                    throw th7;
                }
            } catch (Throwable th8) {
                contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat11, -fIntBitsToFloat12);
                throw th8;
            }
        } catch (Throwable th9) {
            contentDrawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat9, -fIntBitsToFloat10);
            throw th9;
        }
    }

    /* JADX INFO: renamed from: drawMultipleMatchesElement-sW7UJKQ$animation, reason: not valid java name */
    public final void m1128drawMultipleMatchesElementsW7UJKQ$animation(ContentDrawScope contentDrawScope, long j, boolean z, Object obj, int i, TextMeasurer textMeasurer, float f) {
        String str;
        Color.Companion companion = Color.Companion;
        DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, companion.m6269getWhite0d7_KjU(), 0L, 0L, 0.0f, new Stroke(f * 2.0f, 0.0f, 0, 0, null, 30, null), null, 0, 110, null);
        DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, j, 0L, 0L, 0.0f, new Stroke(f, 0.0f, 0, 0, null, 30, null), null, 0, 110, null);
        if (z) {
            switch (i) {
                case 2:
                    str = "2️⃣";
                    break;
                case 3:
                    str = "3️⃣";
                    break;
                case 4:
                    str = "4️⃣";
                    break;
                case 5:
                    str = "5️⃣";
                    break;
                case 6:
                    str = "6️⃣";
                    break;
                case 7:
                    str = "7️⃣";
                    break;
                case 8:
                    str = "8️⃣";
                    break;
                case 9:
                    str = "9️⃣";
                    break;
                default:
                    str = "> 9️⃣";
                    break;
            }
            TextPainterKt.m8476drawTextd8rzKo(contentDrawScope, TextMeasurer.m8464measurewNUYSr0$default(textMeasurer, obj + ": " + str + " matches", new TextStyle(companion.m6269getWhite0d7_KjU(), TextUnitKt.getSp(22), FontWeight.Companion.getBold(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, Color.m6231copywmQWz5c$default(j, 0.8f, 0.0f, 0.0f, 0.0f, 14, null), (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16775160, (jh2) null), 0, false, 0, 0L, null, null, null, false, 1020, null), (250 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : 0L, (250 & 4) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(10.0f)) << 32) | (((long) Float.floatToRawIntBits(10.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), (250 & 8) != 0 ? Float.NaN : 0.0f, (250 & 16) != 0 ? null : null, (250 & 32) != 0 ? null : null, (250 & 64) == 0 ? null : null, (250 & 128) != 0 ? DrawScope.Companion.m6808getDefaultBlendMode0nO6VwU() : 0);
        }
    }

    /* JADX INFO: renamed from: drawOverlay-4WTKRHQ$animation, reason: not valid java name */
    public final void m1129drawOverlay4WTKRHQ$animation(ContentDrawScope contentDrawScope, long j) {
        DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, j, 0L, 0L, 0.0f, null, null, 0, 126, null);
    }

    /* JADX INFO: renamed from: drawUnmatchedElement-3IgeMak$animation, reason: not valid java name */
    public final void m1130drawUnmatchedElement3IgeMak$animation(ContentDrawScope contentDrawScope, long j, boolean z, Object obj, TextMeasurer textMeasurer, float f) {
        DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, Color.Companion.m6269getWhite0d7_KjU(), 0L, 0L, 0.0f, new Stroke(f * 2.0f, 0.0f, 0, 0, null, 30, null), null, 0, 110, null);
        DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, j, 0L, 0L, 0.0f, new Stroke(f, 0.0f, 0, 0, null, 30, null), null, 0, 110, null);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        int iM6221getIntersectrtfAjoo = ClipOp.Companion.m6221getIntersectrtfAjoo();
        DrawContext drawContext = contentDrawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6730clipRectN_I0leg(0.0f, 0.0f, fIntBitsToFloat, fIntBitsToFloat2, iM6221getIntersectrtfAjoo);
            float fIntBitsToFloat3 = Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() >> 32));
            float fIntBitsToFloat4 = Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            float f2 = -fIntBitsToFloat4;
            while (f2 < fIntBitsToFloat3) {
                DrawScope.m6792drawLineNGM6Ib0$default(contentDrawScope, Color.m6231copywmQWz5c$default(j, 0.3f, 0.0f, 0.0f, 0.0f, 14, null), Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat4)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f2 + fIntBitsToFloat4)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), f, 0, null, 0.0f, null, 0, 496, null);
                f2 = (4.0f * f) + f2;
            }
            n1.a(drawContext, jMo6727getSizeNHjbRc);
            if (z) {
                TextPainterKt.m8476drawTextd8rzKo(contentDrawScope, TextMeasurer.m8464measurewNUYSr0$default(textMeasurer, obj + ": 0️⃣ matches", new TextStyle(Color.Companion.m6269getWhite0d7_KjU(), TextUnitKt.getSp(22), FontWeight.Companion.getBold(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, Color.m6231copywmQWz5c$default(j, 0.8f, 0.0f, 0.0f, 0.0f, 14, null), (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16775160, (jh2) null), 0, false, 0, 0L, null, null, null, false, 1020, null), (250 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : 0L, (250 & 4) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(10.0f)) << 32) | (((long) Float.floatToRawIntBits(10.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), (250 & 8) != 0 ? Float.NaN : 0.0f, (250 & 16) != 0 ? null : null, (250 & 32) != 0 ? null : null, (250 & 64) == 0 ? null : null, (250 & 128) != 0 ? DrawScope.Companion.m6808getDefaultBlendMode0nO6VwU() : 0);
            }
        } catch (Throwable th) {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
            throw th;
        }
    }

    public final Path getCenterPath() {
        return this.centerPath;
    }

    public final List<Color> getColors() {
        return this.colors;
    }

    /* JADX INFO: renamed from: getDebugOffset-F1C5BW0, reason: not valid java name */
    public final long m1131getDebugOffsetF1C5BW0() {
        return this.debugOffset;
    }

    public final Path getDebugPath() {
        return this.debugPath;
    }

    /* JADX INFO: renamed from: getSharedTransitionScopeOffset-F1C5BW0, reason: not valid java name */
    public final long m1132getSharedTransitionScopeOffsetF1C5BW0() {
        return this.sharedTransitionScopeOffset;
    }

    /* JADX INFO: renamed from: getSharedTransitionScopeSize-YbymL2g, reason: not valid java name */
    public final long m1133getSharedTransitionScopeSizeYbymL2g() {
        return this.sharedTransitionScopeSize;
    }

    public final void onAttach$animation(y22 y22Var) {
        if (this.isProgressAnimationRunning) {
            return;
        }
        this.isProgressAnimationRunning = true;
        av0.c(y22Var, null, null, new LookaheadAnimationVisualDebugHelper$onAttach$1(this, null), 3);
        av0.c(y22Var, null, null, new LookaheadAnimationVisualDebugHelper$onAttach$2(this, null), 3);
    }

    public final void onDetach$animation(y22 y22Var) {
        if (this.isProgressAnimationRunning) {
            this.isProgressAnimationRunning = false;
            av0.c(y22Var, null, null, new LookaheadAnimationVisualDebugHelper$onDetach$1(this, null), 3);
        }
    }

    /* JADX INFO: renamed from: setDebugOffset-k-4lQ0M, reason: not valid java name */
    public final void m1134setDebugOffsetk4lQ0M(long j) {
        this.debugOffset = j;
    }

    /* JADX INFO: renamed from: setSharedTransitionScopeOffset-k-4lQ0M, reason: not valid java name */
    public final void m1135setSharedTransitionScopeOffsetk4lQ0M(long j) {
        this.sharedTransitionScopeOffset = j;
    }

    /* JADX INFO: renamed from: setSharedTransitionScopeSize-ozmzZPI, reason: not valid java name */
    public final void m1136setSharedTransitionScopeSizeozmzZPI(long j) {
        this.sharedTransitionScopeSize = j;
    }

    /* JADX INFO: renamed from: updateDrawingCoordinates-CowoxoA$animation, reason: not valid java name */
    public final void m1137updateDrawingCoordinatesCowoxoA$animation(long j, long j2) {
        this.sharedTransitionScopeOffset = j;
        this.sharedTransitionScopeSize = j2;
    }
}
