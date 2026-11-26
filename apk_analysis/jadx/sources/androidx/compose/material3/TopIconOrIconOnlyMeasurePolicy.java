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
import com.google.firebase.messaging.Constants;
import defpackage.aa4;
import defpackage.hm;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.w65;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class TopIconOrIconOnlyMeasurePolicy implements MeasurePolicy {
    private final boolean hasLabel;
    private final ll3<Float> indicatorAnimationProgress;
    private final float indicatorHorizontalPadding;
    private final float indicatorToLabelVerticalPadding;
    private final float indicatorVerticalPadding;
    private final float topIconItemVerticalPadding;

    private TopIconOrIconOnlyMeasurePolicy(boolean z, ll3<Float> ll3Var, float f, float f2, float f3, float f4) {
        this.hasLabel = z;
        this.indicatorAnimationProgress = ll3Var;
        this.indicatorHorizontalPadding = f;
        this.indicatorVerticalPadding = f2;
        this.indicatorToLabelVerticalPadding = f3;
        this.topIconItemVerticalPadding = f4;
    }

    public final boolean getHasLabel() {
        return this.hasLabel;
    }

    public final ll3<Float> getIndicatorAnimationProgress() {
        return this.indicatorAnimationProgress;
    }

    /* JADX INFO: renamed from: getIndicatorHorizontalPadding-D9Ej5fM, reason: not valid java name */
    public final float m4304getIndicatorHorizontalPaddingD9Ej5fM() {
        return this.indicatorHorizontalPadding;
    }

    /* JADX INFO: renamed from: getIndicatorToLabelVerticalPadding-D9Ej5fM, reason: not valid java name */
    public final float m4305getIndicatorToLabelVerticalPaddingD9Ej5fM() {
        return this.indicatorToLabelVerticalPadding;
    }

    /* JADX INFO: renamed from: getIndicatorVerticalPadding-D9Ej5fM, reason: not valid java name */
    public final float m4306getIndicatorVerticalPaddingD9Ej5fM() {
        return this.indicatorVerticalPadding;
    }

    /* JADX INFO: renamed from: getTopIconItemVerticalPadding-D9Ej5fM, reason: not valid java name */
    public final float m4307getTopIconItemVerticalPaddingD9Ej5fM() {
        return this.topIconItemVerticalPadding;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        IntrinsicMeasurable intrinsicMeasurable;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            IntrinsicMeasurable intrinsicMeasurable2 = list.get(i2);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable2), "icon")) {
                int iMaxIntrinsicHeight = intrinsicMeasurable2.maxIntrinsicHeight(i);
                int size2 = list.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size2) {
                        intrinsicMeasurable = null;
                        break;
                    }
                    intrinsicMeasurable = list.get(i3);
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable), Constants.ScionAnalytics.PARAM_LABEL)) {
                        break;
                    }
                    i3++;
                }
                IntrinsicMeasurable intrinsicMeasurable3 = intrinsicMeasurable;
                return iMaxIntrinsicHeight + (intrinsicMeasurable3 != null ? intrinsicMeasurable3.maxIntrinsicHeight(i) : 0) + intrinsicMeasureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(Dp.m9042constructorimpl(Dp.m9042constructorimpl(this.indicatorVerticalPadding * 2.0f) + Dp.m9042constructorimpl(this.topIconItemVerticalPadding * 2.0f)) + this.indicatorToLabelVerticalPadding));
            }
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        float fFloatValue = this.indicatorAnimationProgress.invoke().floatValue();
        long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Measurable measurable = list.get(i);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable), "icon")) {
                Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(ConstraintsKt.m9014offsetNN6EwU(jM8985copyZbe2FdA$default, -measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(this.indicatorHorizontalPadding * 2.0f)), -measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(this.indicatorVerticalPadding * 2.0f))));
                int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(this.indicatorHorizontalPadding * 2.0f)) + placeableMo7702measureBRTryo0.getWidth();
                int iMo1428roundToPx0680j_5 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(this.indicatorVerticalPadding * 2.0f)) + placeableMo7702measureBRTryo0.getHeight();
                int iB = w65.b(iMo1428roundToPx0680j_4 * fFloatValue);
                List<? extends Measurable> list2 = list;
                int size2 = list2.size();
                int i2 = 0;
                while (i2 < size2) {
                    Measurable measurable2 = list.get(i2);
                    if (aa4.e(LayoutIdKt.getLayoutId(measurable2), "indicatorRipple")) {
                        Placeable placeableMo7702measureBRTryo1 = measurable2.mo7702measureBRTryo0(ConstraintsKt.m9010constrainN9IONVI(jM8985copyZbe2FdA$default, Constraints.Companion.m9005fixedJhjzzOo(iMo1428roundToPx0680j_4, iMo1428roundToPx0680j_5)));
                        int size3 = list2.size();
                        int i3 = 0;
                        while (i3 < size3) {
                            Measurable measurable3 = list.get(i3);
                            if (aa4.e(LayoutIdKt.getLayoutId(measurable3), "indicator")) {
                                Placeable placeableMo7702measureBRTryo2 = measurable3.mo7702measureBRTryo0(ConstraintsKt.m9010constrainN9IONVI(jM8985copyZbe2FdA$default, Constraints.Companion.m9005fixedJhjzzOo(iB, iMo1428roundToPx0680j_5)));
                                if (!this.hasLabel) {
                                    return NavigationItemKt.m3694placeIconX9ElhV4(measureScope, placeableMo7702measureBRTryo0, placeableMo7702measureBRTryo1, placeableMo7702measureBRTryo2, j);
                                }
                                int size4 = list2.size();
                                int i4 = 0;
                                while (i4 < size4) {
                                    Measurable measurable4 = list.get(i4);
                                    if (aa4.e(LayoutIdKt.getLayoutId(measurable4), Constants.ScionAnalytics.PARAM_LABEL)) {
                                        return NavigationItemKt.m3696placeLabelAndTopIconqoqLrGI(measureScope, measurable4.mo7702measureBRTryo0(ConstraintsKt.m9015offsetNN6EwU$default(jM8985copyZbe2FdA$default, 0, -(measureScope.mo1428roundToPx0680j_4(this.indicatorToLabelVerticalPadding) + placeableMo7702measureBRTryo2.getHeight()), 1, null)), placeableMo7702measureBRTryo0, placeableMo7702measureBRTryo1, placeableMo7702measureBRTryo2, j, this.indicatorToLabelVerticalPadding, this.indicatorVerticalPadding, this.topIconItemVerticalPadding);
                                    }
                                    i4++;
                                    placeableMo7702measureBRTryo2 = placeableMo7702measureBRTryo2;
                                    placeableMo7702measureBRTryo0 = placeableMo7702measureBRTryo0;
                                    measureScope = measureScope;
                                }
                                throw hm.d("Collection contains no element matching the predicate.");
                            }
                            i3++;
                            placeableMo7702measureBRTryo0 = placeableMo7702measureBRTryo0;
                            measureScope = measureScope;
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

    public /* synthetic */ TopIconOrIconOnlyMeasurePolicy(boolean z, ll3 ll3Var, float f, float f2, float f3, float f4, jh2 jh2Var) {
        this(z, ll3Var, f, f2, f3, f4);
    }
}
