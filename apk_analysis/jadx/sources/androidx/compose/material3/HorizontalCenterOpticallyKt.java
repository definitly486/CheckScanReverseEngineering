package androidx.compose.material3;

import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.material3.HorizontalCenterOpticallyKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.media3.muxer.MuxerUtil;
import defpackage.dm3;
import defpackage.j59;
import defpackage.kx6;
import defpackage.nl3;
import defpackage.w65;

/* JADX INFO: loaded from: classes2.dex */
public final class HorizontalCenterOpticallyKt {
    public static final float CenterOpticallyCoefficient = 0.11f;

    /* JADX INFO: renamed from: horizontalCenterOptically-4j6BHR0, reason: not valid java name */
    public static final Modifier m3491horizontalCenterOptically4j6BHR0(Modifier modifier, final CornerBasedShape cornerBasedShape, final float f, final float f2) {
        return LayoutModifierKt.layout(modifier, new dm3() { // from class: ow3
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return HorizontalCenterOpticallyKt.horizontalCenterOptically_4j6BHR0$lambda$1(f, f2, cornerBasedShape, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
            }
        });
    }

    /* JADX INFO: renamed from: horizontalCenterOptically-4j6BHR0$default, reason: not valid java name */
    public static /* synthetic */ Modifier m3493horizontalCenterOptically4j6BHR0$default(Modifier modifier, CornerBasedShape cornerBasedShape, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 4) != 0) {
            f2 = Dp.m9042constructorimpl(0.0f);
        }
        return m3491horizontalCenterOptically4j6BHR0(modifier, cornerBasedShape, f, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult horizontalCenterOptically_4j6BHR0$lambda$1(float f, float f2, CornerBasedShape cornerBasedShape, MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(constraints.m9001unboximpl());
        int width = placeableMo7702measureBRTryo0.getWidth();
        int height = placeableMo7702measureBRTryo0.getHeight();
        long jM6047constructorimpl = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(width)) << 32) | (((long) Float.floatToRawIntBits(height)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        final float f3 = -measureScope.mo1434toPx0680j_4(f);
        final float fMo1434toPx0680j_4 = measureScope.mo1434toPx0680j_4(f2);
        final float fMo2341toPxTmRCtEA = (((cornerBasedShape.getTopStart().mo2341toPxTmRCtEA(jM6047constructorimpl, measureScope) + cornerBasedShape.getBottomStart().mo2341toPxTmRCtEA(jM6047constructorimpl, measureScope)) / 2.0f) - ((cornerBasedShape.getTopEnd().mo2341toPxTmRCtEA(jM6047constructorimpl, measureScope) + cornerBasedShape.getBottomEnd().mo2341toPxTmRCtEA(jM6047constructorimpl, measureScope)) / 2.0f)) * 0.11f;
        return MeasureScope.layout$default(measureScope, width, height, null, new nl3() { // from class: nw3
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return HorizontalCenterOpticallyKt.horizontalCenterOptically_4j6BHR0$lambda$1$lambda$0(fMo2341toPxTmRCtEA, f3, fMo1434toPx0680j_4, placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 horizontalCenterOptically_4j6BHR0$lambda$1$lambda$0(float f, float f2, float f3, Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, w65.b(kx6.d(f, f2, f3)), 0, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult horizontalCenterOptically_4j6BHR0$lambda$3(float f, float f2, final ShapeWithHorizontalCenterOptically shapeWithHorizontalCenterOptically, MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(constraints.m9001unboximpl());
        int width = placeableMo7702measureBRTryo0.getWidth();
        int height = placeableMo7702measureBRTryo0.getHeight();
        final float f3 = -measureScope.mo1434toPx0680j_4(f);
        final float fMo1434toPx0680j_4 = measureScope.mo1434toPx0680j_4(f2);
        return MeasureScope.layout$default(measureScope, width, height, null, new nl3() { // from class: mw3
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return HorizontalCenterOpticallyKt.horizontalCenterOptically_4j6BHR0$lambda$3$lambda$2(shapeWithHorizontalCenterOptically, f3, fMo1434toPx0680j_4, placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 horizontalCenterOptically_4j6BHR0$lambda$3$lambda$2(ShapeWithHorizontalCenterOptically shapeWithHorizontalCenterOptically, float f, float f2, Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, w65.b(kx6.d(shapeWithHorizontalCenterOptically.offset(), f, f2)), 0, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: renamed from: horizontalCenterOptically-4j6BHR0, reason: not valid java name */
    public static final Modifier m3492horizontalCenterOptically4j6BHR0(Modifier modifier, final ShapeWithHorizontalCenterOptically shapeWithHorizontalCenterOptically, final float f, final float f2) {
        return LayoutModifierKt.layout(modifier, new dm3() { // from class: pw3
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return HorizontalCenterOpticallyKt.horizontalCenterOptically_4j6BHR0$lambda$3(f, f2, shapeWithHorizontalCenterOptically, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
            }
        });
    }

    /* JADX INFO: renamed from: horizontalCenterOptically-4j6BHR0$default, reason: not valid java name */
    public static /* synthetic */ Modifier m3494horizontalCenterOptically4j6BHR0$default(Modifier modifier, ShapeWithHorizontalCenterOptically shapeWithHorizontalCenterOptically, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 4) != 0) {
            f2 = Dp.m9042constructorimpl(0.0f);
        }
        return m3492horizontalCenterOptically4j6BHR0(modifier, shapeWithHorizontalCenterOptically, f, f2);
    }
}
