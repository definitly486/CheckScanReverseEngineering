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
final class StartIconMeasurePolicy implements MeasurePolicy {
    private final ll3<Float> indicatorAnimationProgress;
    private final float indicatorHorizontalPadding;
    private final float indicatorVerticalPadding;
    private final float startIconToLabelHorizontalPadding;

    private StartIconMeasurePolicy(ll3<Float> ll3Var, float f, float f2, float f3) {
        this.indicatorAnimationProgress = ll3Var;
        this.indicatorHorizontalPadding = f;
        this.indicatorVerticalPadding = f2;
        this.startIconToLabelHorizontalPadding = f3;
    }

    public final ll3<Float> getIndicatorAnimationProgress() {
        return this.indicatorAnimationProgress;
    }

    /* JADX INFO: renamed from: getIndicatorHorizontalPadding-D9Ej5fM, reason: not valid java name */
    public final float m3931getIndicatorHorizontalPaddingD9Ej5fM() {
        return this.indicatorHorizontalPadding;
    }

    /* JADX INFO: renamed from: getIndicatorVerticalPadding-D9Ej5fM, reason: not valid java name */
    public final float m3932getIndicatorVerticalPaddingD9Ej5fM() {
        return this.indicatorVerticalPadding;
    }

    /* JADX INFO: renamed from: getStartIconToLabelHorizontalPadding-D9Ej5fM, reason: not valid java name */
    public final float m3933getStartIconToLabelHorizontalPaddingD9Ej5fM() {
        return this.startIconToLabelHorizontalPadding;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            IntrinsicMeasurable intrinsicMeasurable = list.get(i2);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable), "icon")) {
                int iMaxIntrinsicHeight = intrinsicMeasurable.maxIntrinsicHeight(i);
                int size2 = list.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    IntrinsicMeasurable intrinsicMeasurable2 = list.get(i3);
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable2), Constants.ScionAnalytics.PARAM_LABEL)) {
                        return Math.max(iMaxIntrinsicHeight, intrinsicMeasurable2.maxIntrinsicHeight(i)) + intrinsicMeasureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(this.indicatorVerticalPadding * 2.0f));
                    }
                }
                throw hm.d("Collection contains no element matching the predicate.");
            }
        }
        throw hm.d("Collection contains no element matching the predicate.");
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
                        return iMaxIntrinsicWidth + intrinsicMeasurable2.maxIntrinsicWidth(i) + intrinsicMeasureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(Dp.m9042constructorimpl(this.indicatorHorizontalPadding * 2.0f) + this.startIconToLabelHorizontalPadding));
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
                        Placeable placeableMo7702measureBRTryo1 = measurable2.mo7702measureBRTryo0(ConstraintsKt.m9015offsetNN6EwU$default(jM8985copyZbe2FdA$default, -(measureScope.mo1428roundToPx0680j_4(this.startIconToLabelHorizontalPadding) + placeableMo7702measureBRTryo0.getWidth()), 0, 2, null));
                        int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(Dp.m9042constructorimpl(this.indicatorHorizontalPadding * 2.0f) + this.startIconToLabelHorizontalPadding)) + placeableMo7702measureBRTryo1.getWidth() + placeableMo7702measureBRTryo0.getWidth();
                        int iMo1428roundToPx0680j_5 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(this.indicatorVerticalPadding * 2.0f)) + Math.max(placeableMo7702measureBRTryo0.getHeight(), placeableMo7702measureBRTryo1.getHeight());
                        int iB = w65.b(iMo1428roundToPx0680j_4 * fFloatValue);
                        int size3 = list2.size();
                        int i3 = 0;
                        while (i3 < size3) {
                            Measurable measurable3 = list.get(i3);
                            if (aa4.e(LayoutIdKt.getLayoutId(measurable3), "indicatorRipple")) {
                                Placeable placeableMo7702measureBRTryo2 = measurable3.mo7702measureBRTryo0(ConstraintsKt.m9010constrainN9IONVI(jM8985copyZbe2FdA$default, Constraints.Companion.m9005fixedJhjzzOo(iMo1428roundToPx0680j_4, iMo1428roundToPx0680j_5)));
                                int size4 = list2.size();
                                int i4 = 0;
                                while (i4 < size4) {
                                    Measurable measurable4 = list.get(i4);
                                    if (aa4.e(LayoutIdKt.getLayoutId(measurable4), "indicator")) {
                                        return NavigationItemKt.m3695placeLabelAndStartIconnru01g4(measureScope, placeableMo7702measureBRTryo1, placeableMo7702measureBRTryo0, placeableMo7702measureBRTryo2, measurable4.mo7702measureBRTryo0(ConstraintsKt.m9010constrainN9IONVI(jM8985copyZbe2FdA$default, Constraints.Companion.m9005fixedJhjzzOo(iB, iMo1428roundToPx0680j_5))), j, this.startIconToLabelHorizontalPadding);
                                    }
                                    i4++;
                                    placeableMo7702measureBRTryo0 = placeableMo7702measureBRTryo0;
                                    placeableMo7702measureBRTryo2 = placeableMo7702measureBRTryo2;
                                    placeableMo7702measureBRTryo1 = placeableMo7702measureBRTryo1;
                                }
                                throw hm.d("Collection contains no element matching the predicate.");
                            }
                            i3++;
                            placeableMo7702measureBRTryo0 = placeableMo7702measureBRTryo0;
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

    public /* synthetic */ StartIconMeasurePolicy(ll3 ll3Var, float f, float f2, float f3, jh2 jh2Var) {
        this(ll3Var, f, f2, f3);
    }
}
