package androidx.compose.material3;

import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.util.MathHelpersKt;
import com.google.firebase.messaging.Constants;
import defpackage.aa4;
import defpackage.hm;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.w65;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class AnimatedMeasurePolicy implements MeasurePolicy {
    private final int iconPosition;
    private final ll3<Float> iconPositionProgress;
    private final ll3<Float> indicatorAnimationProgress;
    private final float itemHorizontalPadding;
    private final float startIconIndicatorHorizontalPadding;
    private final float startIconIndicatorVerticalPadding;
    private final float startIconToLabelHorizontalPadding;
    private final float topIconIndicatorHorizontalPadding;
    private final float topIconIndicatorToLabelVerticalPadding;
    private final float topIconIndicatorVerticalPadding;

    private AnimatedMeasurePolicy(int i, ll3<Float> ll3Var, ll3<Float> ll3Var2, float f, float f2, float f3, float f4, float f5, float f6, float f7) {
        this.iconPosition = i;
        this.iconPositionProgress = ll3Var;
        this.indicatorAnimationProgress = ll3Var2;
        this.topIconIndicatorHorizontalPadding = f;
        this.topIconIndicatorVerticalPadding = f2;
        this.topIconIndicatorToLabelVerticalPadding = f3;
        this.startIconIndicatorHorizontalPadding = f4;
        this.startIconIndicatorVerticalPadding = f5;
        this.startIconToLabelHorizontalPadding = f6;
        this.itemHorizontalPadding = f7;
    }

    /* JADX INFO: renamed from: getIconPosition--xw1Ddg, reason: not valid java name */
    public final int m3082getIconPositionxw1Ddg() {
        return this.iconPosition;
    }

    public final ll3<Float> getIconPositionProgress() {
        return this.iconPositionProgress;
    }

    public final ll3<Float> getIndicatorAnimationProgress() {
        return this.indicatorAnimationProgress;
    }

    /* JADX INFO: renamed from: getItemHorizontalPadding-D9Ej5fM, reason: not valid java name */
    public final float m3083getItemHorizontalPaddingD9Ej5fM() {
        return this.itemHorizontalPadding;
    }

    /* JADX INFO: renamed from: getStartIconIndicatorHorizontalPadding-D9Ej5fM, reason: not valid java name */
    public final float m3084getStartIconIndicatorHorizontalPaddingD9Ej5fM() {
        return this.startIconIndicatorHorizontalPadding;
    }

    /* JADX INFO: renamed from: getStartIconIndicatorVerticalPadding-D9Ej5fM, reason: not valid java name */
    public final float m3085getStartIconIndicatorVerticalPaddingD9Ej5fM() {
        return this.startIconIndicatorVerticalPadding;
    }

    /* JADX INFO: renamed from: getStartIconToLabelHorizontalPadding-D9Ej5fM, reason: not valid java name */
    public final float m3086getStartIconToLabelHorizontalPaddingD9Ej5fM() {
        return this.startIconToLabelHorizontalPadding;
    }

    /* JADX INFO: renamed from: getTopIconIndicatorHorizontalPadding-D9Ej5fM, reason: not valid java name */
    public final float m3087getTopIconIndicatorHorizontalPaddingD9Ej5fM() {
        return this.topIconIndicatorHorizontalPadding;
    }

    /* JADX INFO: renamed from: getTopIconIndicatorToLabelVerticalPadding-D9Ej5fM, reason: not valid java name */
    public final float m3088getTopIconIndicatorToLabelVerticalPaddingD9Ej5fM() {
        return this.topIconIndicatorToLabelVerticalPadding;
    }

    /* JADX INFO: renamed from: getTopIconIndicatorVerticalPadding-D9Ej5fM, reason: not valid java name */
    public final float m3089getTopIconIndicatorVerticalPaddingD9Ej5fM() {
        return this.topIconIndicatorVerticalPadding;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            IntrinsicMeasurable intrinsicMeasurable = list.get(i2);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable), "icon")) {
                int iMaxIntrinsicWidth = intrinsicMeasurable.maxIntrinsicWidth(i);
                int size2 = list.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    IntrinsicMeasurable intrinsicMeasurable2 = list.get(i3);
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable2), Constants.ScionAnalytics.PARAM_LABEL)) {
                        int iMaxIntrinsicWidth2 = intrinsicMeasurable2.maxIntrinsicWidth(i);
                        if (NavigationItemIconPosition.m3678equalsimpl0(this.iconPosition, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg())) {
                            return Math.max(iMaxIntrinsicWidth2, intrinsicMeasureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(Dp.m9042constructorimpl(this.itemHorizontalPadding * 2.0f) + Dp.m9042constructorimpl(this.topIconIndicatorHorizontalPadding * 2.0f))) + iMaxIntrinsicWidth);
                        }
                        return iMaxIntrinsicWidth + iMaxIntrinsicWidth2 + intrinsicMeasureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(Dp.m9042constructorimpl(Dp.m9042constructorimpl(this.startIconIndicatorHorizontalPadding * 2.0f) + this.startIconToLabelHorizontalPadding) + this.itemHorizontalPadding));
                    }
                }
                throw hm.d("Collection contains no element matching the predicate.");
            }
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        float fFloatValue = this.indicatorAnimationProgress.invoke().floatValue();
        float fFloatValue2 = this.iconPositionProgress.invoke().floatValue();
        long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Measurable measurable = list.get(i);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable), "icon")) {
                Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(jM8985copyZbe2FdA$default);
                List<? extends Measurable> list2 = list;
                int size2 = list2.size();
                int i2 = 0;
                while (i2 < size2) {
                    Measurable measurable2 = list.get(i2);
                    if (aa4.e(LayoutIdKt.getLayoutId(measurable2), Constants.ScionAnalytics.PARAM_LABEL)) {
                        Placeable placeableMo7702measureBRTryo1 = measurable2.mo7702measureBRTryo0(jM8985copyZbe2FdA$default);
                        int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(this.topIconIndicatorHorizontalPadding * 2.0f)) + placeableMo7702measureBRTryo0.getWidth();
                        int iMo1428roundToPx0680j_5 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(this.topIconIndicatorVerticalPadding * 2.0f)) + placeableMo7702measureBRTryo0.getHeight();
                        int iMo1428roundToPx0680j_6 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(Dp.m9042constructorimpl(this.startIconIndicatorHorizontalPadding * 2.0f) + this.startIconToLabelHorizontalPadding)) + placeableMo7702measureBRTryo1.getWidth() + placeableMo7702measureBRTryo0.getWidth();
                        int iMo1428roundToPx0680j_7 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(this.startIconIndicatorVerticalPadding * 2.0f)) + Math.max(placeableMo7702measureBRTryo0.getHeight(), placeableMo7702measureBRTryo1.getHeight());
                        int iLerp = MathHelpersKt.lerp(iMo1428roundToPx0680j_4, iMo1428roundToPx0680j_6, fFloatValue2);
                        int iB = w65.b(iLerp * fFloatValue);
                        int iLerp2 = MathHelpersKt.lerp(iMo1428roundToPx0680j_5, iMo1428roundToPx0680j_7, fFloatValue2);
                        int size3 = list2.size();
                        int i3 = 0;
                        while (i3 < size3) {
                            Measurable measurable3 = list.get(i3);
                            Placeable placeable = placeableMo7702measureBRTryo0;
                            if (aa4.e(LayoutIdKt.getLayoutId(measurable3), "indicatorRipple")) {
                                Placeable placeableMo7702measureBRTryo2 = measurable3.mo7702measureBRTryo0(ConstraintsKt.m9010constrainN9IONVI(jM8985copyZbe2FdA$default, Constraints.Companion.m9005fixedJhjzzOo(iLerp, iLerp2)));
                                int size4 = list2.size();
                                int i4 = 0;
                                while (i4 < size4) {
                                    Measurable measurable4 = list.get(i4);
                                    if (aa4.e(LayoutIdKt.getLayoutId(measurable4), "indicator")) {
                                        return NavigationItemKt.m3693placeAnimatedLabelAndIcon2QYhCQ8(measureScope, this.iconPosition, this.iconPositionProgress, placeableMo7702measureBRTryo1, placeable, placeableMo7702measureBRTryo2, measurable4.mo7702measureBRTryo0(ConstraintsKt.m9010constrainN9IONVI(jM8985copyZbe2FdA$default, Constraints.Companion.m9005fixedJhjzzOo(iB, iLerp2))), iMo1428roundToPx0680j_4, jM8985copyZbe2FdA$default, this.topIconIndicatorToLabelVerticalPadding, this.topIconIndicatorVerticalPadding, this.topIconIndicatorHorizontalPadding, this.startIconIndicatorHorizontalPadding, this.startIconIndicatorVerticalPadding, this.startIconToLabelHorizontalPadding, this.itemHorizontalPadding);
                                    }
                                    i4++;
                                    iMo1428roundToPx0680j_4 = iMo1428roundToPx0680j_4;
                                }
                                throw hm.d("Collection contains no element matching the predicate.");
                            }
                            i3++;
                            placeableMo7702measureBRTryo0 = placeable;
                            iMo1428roundToPx0680j_4 = iMo1428roundToPx0680j_4;
                        }
                        throw hm.d("Collection contains no element matching the predicate.");
                    }
                    i2++;
                    measureScope = measureScope;
                }
                throw hm.d("Collection contains no element matching the predicate.");
            }
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }

    public /* synthetic */ AnimatedMeasurePolicy(int i, ll3 ll3Var, ll3 ll3Var2, float f, float f2, float f3, float f4, float f5, float f6, float f7, jh2 jh2Var) {
        this(i, ll3Var, ll3Var2, f, f2, f3, f4, f5, f6, f7);
    }
}
