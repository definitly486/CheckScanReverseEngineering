package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.material3.tokens.MotionTokens;
import androidx.compose.ui.Alignment;
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
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.MathHelpersKt;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.hm;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.pp1;
import defpackage.r07;
import defpackage.w65;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class TextFieldMeasurePolicy implements MeasurePolicy {
    private final TextFieldLabelPosition labelPosition;
    private final FloatProducer labelProgress;
    private final float minimizedLabelHalfHeight;
    private final PaddingValues paddingValues;
    private final boolean singleLine;

    private TextFieldMeasurePolicy(boolean z, TextFieldLabelPosition textFieldLabelPosition, FloatProducer floatProducer, PaddingValues paddingValues, float f) {
        this.singleLine = z;
        this.labelPosition = textFieldLabelPosition;
        this.labelProgress = floatProducer;
        this.paddingValues = paddingValues;
        this.minimizedLabelHalfHeight = f;
    }

    /* JADX INFO: renamed from: calculateHeight-mKXJcVc, reason: not valid java name */
    private final int m4080calculateHeightmKXJcVc(Density density, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j, boolean z, float f) {
        int iMo1428roundToPx0680j_4 = density.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(this.paddingValues.mo1982calculateBottomPaddingD9Ej5fM() + this.paddingValues.mo1985calculateTopPaddingD9Ej5fM())) + ((i2 <= 0 || z) ? 0 : Math.max(density.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(this.minimizedLabelHalfHeight * 2.0f)), MathHelpersKt.lerp(0, i2, MotionTokens.INSTANCE.getEasingEmphasizedAccelerateCubicBezier().transform(f)))) + pp1.b(i, i7, i5, i6, z ? 0 : MathHelpersKt.lerp(i2, 0, f));
        if (!z) {
            i2 = 0;
        }
        return ConstraintsKt.m9011constrainHeightK40F9xA(j, Math.max(i3, Math.max(i4, iMo1428roundToPx0680j_4)) + i2 + i8);
    }

    /* JADX INFO: renamed from: calculateWidth-yeHjK3Y, reason: not valid java name */
    private final int m4081calculateWidthyeHjK3Y(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j) {
        int i8 = i3 + i4;
        return ConstraintsKt.m9012constrainWidthK40F9xA(j, Math.max(i5 + i8, Math.max(i7 + i8, i6)) + i + i2);
    }

    private final int intrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i, bm3<? super IntrinsicMeasurable, ? super Integer, Integer> bm3Var) {
        IntrinsicMeasurable intrinsicMeasurable;
        int i2;
        int iSubtractConstraintSafely;
        int iIntValue;
        IntrinsicMeasurable intrinsicMeasurable2;
        int iIntValue2;
        IntrinsicMeasurable intrinsicMeasurable3;
        IntrinsicMeasurable intrinsicMeasurable4;
        int iSubtractConstraintSafely2;
        int i3;
        IntrinsicMeasurable intrinsicMeasurable5;
        int iIntValue3;
        int i4;
        IntrinsicMeasurable intrinsicMeasurable6;
        IntrinsicMeasurable intrinsicMeasurable7;
        List<? extends IntrinsicMeasurable> list2 = list;
        int size = list2.size();
        int i5 = 0;
        while (true) {
            if (i5 >= size) {
                intrinsicMeasurable = null;
                break;
            }
            intrinsicMeasurable = list.get(i5);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable), TextFieldImplKt.LeadingId)) {
                break;
            }
            i5++;
        }
        IntrinsicMeasurable intrinsicMeasurable8 = intrinsicMeasurable;
        if (intrinsicMeasurable8 != null) {
            i2 = i;
            iSubtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(i2, intrinsicMeasurable8.maxIntrinsicWidth(Integer.MAX_VALUE));
            iIntValue = bm3Var.invoke(intrinsicMeasurable8, Integer.valueOf(i2)).intValue();
        } else {
            i2 = i;
            iSubtractConstraintSafely = i2;
            iIntValue = 0;
        }
        int size2 = list2.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size2) {
                intrinsicMeasurable2 = null;
                break;
            }
            intrinsicMeasurable2 = list.get(i6);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable2), TextFieldImplKt.TrailingId)) {
                break;
            }
            i6++;
        }
        IntrinsicMeasurable intrinsicMeasurable9 = intrinsicMeasurable2;
        if (intrinsicMeasurable9 != null) {
            iSubtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(iSubtractConstraintSafely, intrinsicMeasurable9.maxIntrinsicWidth(Integer.MAX_VALUE));
            iIntValue2 = bm3Var.invoke(intrinsicMeasurable9, Integer.valueOf(i2)).intValue();
        } else {
            iIntValue2 = 0;
        }
        int size3 = list2.size();
        int i7 = 0;
        while (true) {
            if (i7 >= size3) {
                intrinsicMeasurable3 = null;
                break;
            }
            intrinsicMeasurable3 = list.get(i7);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable3), TextFieldImplKt.LabelId)) {
                break;
            }
            i7++;
        }
        IntrinsicMeasurable intrinsicMeasurable10 = intrinsicMeasurable3;
        int iIntValue4 = intrinsicMeasurable10 != null ? bm3Var.invoke(intrinsicMeasurable10, Integer.valueOf(iSubtractConstraintSafely)).intValue() : 0;
        int size4 = list2.size();
        int i8 = 0;
        while (true) {
            if (i8 >= size4) {
                intrinsicMeasurable4 = null;
                break;
            }
            intrinsicMeasurable4 = list.get(i8);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable4), TextFieldImplKt.PrefixId)) {
                break;
            }
            i8++;
        }
        IntrinsicMeasurable intrinsicMeasurable11 = intrinsicMeasurable4;
        if (intrinsicMeasurable11 != null) {
            int iIntValue5 = bm3Var.invoke(intrinsicMeasurable11, Integer.valueOf(iSubtractConstraintSafely)).intValue();
            int iSubtractConstraintSafely3 = LayoutUtilKt.subtractConstraintSafely(iSubtractConstraintSafely, intrinsicMeasurable11.maxIntrinsicWidth(Integer.MAX_VALUE));
            i3 = iIntValue5;
            iSubtractConstraintSafely2 = iSubtractConstraintSafely3;
        } else {
            iSubtractConstraintSafely2 = iSubtractConstraintSafely;
            i3 = 0;
        }
        int size5 = list2.size();
        int i9 = 0;
        while (true) {
            if (i9 >= size5) {
                intrinsicMeasurable5 = null;
                break;
            }
            intrinsicMeasurable5 = list.get(i9);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable5), TextFieldImplKt.SuffixId)) {
                break;
            }
            i9++;
        }
        IntrinsicMeasurable intrinsicMeasurable12 = intrinsicMeasurable5;
        if (intrinsicMeasurable12 != null) {
            iIntValue3 = bm3Var.invoke(intrinsicMeasurable12, Integer.valueOf(iSubtractConstraintSafely2)).intValue();
            iSubtractConstraintSafely2 = LayoutUtilKt.subtractConstraintSafely(iSubtractConstraintSafely2, intrinsicMeasurable12.maxIntrinsicWidth(Integer.MAX_VALUE));
        } else {
            iIntValue3 = 0;
        }
        int size6 = list2.size();
        for (int i10 = 0; i10 < size6; i10++) {
            IntrinsicMeasurable intrinsicMeasurable13 = list.get(i10);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable13), TextFieldImplKt.TextFieldId)) {
                int iIntValue6 = bm3Var.invoke(intrinsicMeasurable13, Integer.valueOf(iSubtractConstraintSafely2)).intValue();
                List<? extends IntrinsicMeasurable> list3 = list;
                int size7 = list3.size();
                int i11 = 0;
                while (true) {
                    if (i11 >= size7) {
                        i4 = iIntValue6;
                        intrinsicMeasurable6 = null;
                        break;
                    }
                    intrinsicMeasurable6 = list.get(i11);
                    i4 = iIntValue6;
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable6), TextFieldImplKt.PlaceholderId)) {
                        break;
                    }
                    i11++;
                    iIntValue6 = i4;
                }
                IntrinsicMeasurable intrinsicMeasurable14 = intrinsicMeasurable6;
                int iIntValue7 = intrinsicMeasurable14 != null ? bm3Var.invoke(intrinsicMeasurable14, Integer.valueOf(iSubtractConstraintSafely2)).intValue() : 0;
                int size8 = list3.size();
                int i12 = 0;
                while (true) {
                    if (i12 >= size8) {
                        intrinsicMeasurable7 = null;
                        break;
                    }
                    intrinsicMeasurable7 = list.get(i12);
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable7), TextFieldImplKt.SupportingId)) {
                        break;
                    }
                    i12++;
                }
                IntrinsicMeasurable intrinsicMeasurable15 = intrinsicMeasurable7;
                return m4080calculateHeightmKXJcVc(intrinsicMeasureScope, i4, iIntValue4, iIntValue, iIntValue2, i3, iIntValue3, iIntValue7, intrinsicMeasurable15 != null ? bm3Var.invoke(intrinsicMeasurable15, Integer.valueOf(i2)).intValue() : 0, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null), this.labelPosition instanceof TextFieldLabelPosition.Above, this.labelProgress.invoke());
            }
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }

    private final int intrinsicWidth(List<? extends IntrinsicMeasurable> list, int i, bm3<? super IntrinsicMeasurable, ? super Integer, Integer> bm3Var) {
        IntrinsicMeasurable intrinsicMeasurable;
        IntrinsicMeasurable intrinsicMeasurable2;
        IntrinsicMeasurable intrinsicMeasurable3;
        IntrinsicMeasurable intrinsicMeasurable4;
        IntrinsicMeasurable intrinsicMeasurable5;
        IntrinsicMeasurable intrinsicMeasurable6;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            IntrinsicMeasurable intrinsicMeasurable7 = list.get(i2);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable7), TextFieldImplKt.TextFieldId)) {
                int iIntValue = bm3Var.invoke(intrinsicMeasurable7, Integer.valueOf(i)).intValue();
                List<? extends IntrinsicMeasurable> list2 = list;
                int size2 = list2.size();
                int i3 = 0;
                while (true) {
                    intrinsicMeasurable = null;
                    if (i3 >= size2) {
                        intrinsicMeasurable2 = null;
                        break;
                    }
                    intrinsicMeasurable2 = list.get(i3);
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable2), TextFieldImplKt.LabelId)) {
                        break;
                    }
                    i3++;
                }
                IntrinsicMeasurable intrinsicMeasurable8 = intrinsicMeasurable2;
                int iIntValue2 = intrinsicMeasurable8 != null ? bm3Var.invoke(intrinsicMeasurable8, Integer.valueOf(i)).intValue() : 0;
                int size3 = list2.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size3) {
                        intrinsicMeasurable3 = null;
                        break;
                    }
                    intrinsicMeasurable3 = list.get(i4);
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable3), TextFieldImplKt.TrailingId)) {
                        break;
                    }
                    i4++;
                }
                IntrinsicMeasurable intrinsicMeasurable9 = intrinsicMeasurable3;
                int iIntValue3 = intrinsicMeasurable9 != null ? bm3Var.invoke(intrinsicMeasurable9, Integer.valueOf(i)).intValue() : 0;
                int size4 = list2.size();
                int i5 = 0;
                while (true) {
                    if (i5 >= size4) {
                        intrinsicMeasurable4 = null;
                        break;
                    }
                    intrinsicMeasurable4 = list.get(i5);
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable4), TextFieldImplKt.PrefixId)) {
                        break;
                    }
                    i5++;
                }
                IntrinsicMeasurable intrinsicMeasurable10 = intrinsicMeasurable4;
                int iIntValue4 = intrinsicMeasurable10 != null ? bm3Var.invoke(intrinsicMeasurable10, Integer.valueOf(i)).intValue() : 0;
                int size5 = list2.size();
                int i6 = 0;
                while (true) {
                    if (i6 >= size5) {
                        intrinsicMeasurable5 = null;
                        break;
                    }
                    intrinsicMeasurable5 = list.get(i6);
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable5), TextFieldImplKt.SuffixId)) {
                        break;
                    }
                    i6++;
                }
                IntrinsicMeasurable intrinsicMeasurable11 = intrinsicMeasurable5;
                int iIntValue5 = intrinsicMeasurable11 != null ? bm3Var.invoke(intrinsicMeasurable11, Integer.valueOf(i)).intValue() : 0;
                int size6 = list2.size();
                int i7 = 0;
                while (true) {
                    if (i7 >= size6) {
                        intrinsicMeasurable6 = null;
                        break;
                    }
                    intrinsicMeasurable6 = list.get(i7);
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable6), TextFieldImplKt.LeadingId)) {
                        break;
                    }
                    i7++;
                }
                IntrinsicMeasurable intrinsicMeasurable12 = intrinsicMeasurable6;
                int iIntValue6 = intrinsicMeasurable12 != null ? bm3Var.invoke(intrinsicMeasurable12, Integer.valueOf(i)).intValue() : 0;
                int size7 = list2.size();
                for (int i8 = 0; i8 < size7; i8++) {
                    IntrinsicMeasurable intrinsicMeasurable13 = list.get(i8);
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable13), TextFieldImplKt.PlaceholderId)) {
                        intrinsicMeasurable = intrinsicMeasurable13;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable14 = intrinsicMeasurable;
                return m4081calculateWidthyeHjK3Y(iIntValue6, iIntValue3, iIntValue4, iIntValue5, iIntValue, iIntValue2, intrinsicMeasurable14 != null ? bm3Var.invoke(intrinsicMeasurable14, Integer.valueOf(i)).intValue() : 0, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null));
            }
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 measure_3p2s80s$lambda$9(r07 r07Var, boolean z, TextFieldMeasurePolicy textFieldMeasurePolicy, int i, int i2, MeasureScope measureScope, int i3, int i4, Placeable placeable, Placeable placeable2, Placeable placeable3, Placeable placeable4, Placeable placeable5, Placeable placeable6, Placeable placeable7, Placeable placeable8, float f, Placeable.PlacementScope placementScope) {
        MeasureScope measureScope2;
        int iMo1428roundToPx0680j_4;
        int i5;
        if (r07Var.b != 0) {
            if (z) {
                measureScope2 = measureScope;
                i5 = 0;
            } else {
                if (textFieldMeasurePolicy.singleLine) {
                    iMo1428roundToPx0680j_4 = Alignment.Companion.getCenterVertically().align(((Placeable) r07Var.b).getHeight(), i);
                    measureScope2 = measureScope;
                } else {
                    measureScope2 = measureScope;
                    iMo1428roundToPx0680j_4 = measureScope2.mo1428roundToPx0680j_4(textFieldMeasurePolicy.minimizedLabelHalfHeight) + i2;
                }
                i5 = iMo1428roundToPx0680j_4;
            }
            int i6 = z ? 0 : i2;
            T t = r07Var.b;
            textFieldMeasurePolicy.placeWithLabel(placementScope, i3, i4, placeable, (Placeable) t, placeable2, placeable3, placeable4, placeable5, placeable6, placeable7, placeable8, i5, i6, z, f, i2 + (z ? 0 : ((Placeable) t).getHeight()), measureScope2.getLayoutDirection());
        } else {
            textFieldMeasurePolicy.placeWithoutLabel(placementScope, i3, i4, placeable, placeable2, placeable3, placeable4, placeable5, placeable6, placeable7, placeable8, measureScope.getDensity());
        }
        return j59.a;
    }

    private final void placeWithLabel(Placeable.PlacementScope placementScope, int i, int i2, Placeable placeable, Placeable placeable2, Placeable placeable3, Placeable placeable4, Placeable placeable5, Placeable placeable6, Placeable placeable7, Placeable placeable8, Placeable placeable9, int i3, int i4, boolean z, float f, int i5, LayoutDirection layoutDirection) {
        int height = z ? placeable2.getHeight() : 0;
        Placeable.PlacementScope.place$default(placementScope, placeable8, 0, height, 0.0f, 4, null);
        int heightOrZero = (i2 - LayoutUtilKt.getHeightOrZero(placeable9)) - (z ? placeable2.getHeight() : 0);
        if (placeable4 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, 0, Alignment.Companion.getCenterVertically().align(placeable4.getHeight(), heightOrZero) + height, 0.0f, 4, null);
        }
        int iLerp = MathHelpersKt.lerp(i3, i4, f);
        if (z) {
            Placeable.PlacementScope.place$default(placementScope, placeable2, TextFieldImplKt.getMinimizedAlignment(this.labelPosition).align(placeable2.getWidth(), i, layoutDirection), iLerp, 0.0f, 4, null);
        } else {
            int widthOrZero = layoutDirection == LayoutDirection.Ltr ? LayoutUtilKt.getWidthOrZero(placeable4) : LayoutUtilKt.getWidthOrZero(placeable5);
            Placeable.PlacementScope.place$default(placementScope, placeable2, MathHelpersKt.lerp(TextFieldImplKt.getExpandedAlignment(this.labelPosition).align(placeable2.getWidth(), (i - LayoutUtilKt.getWidthOrZero(placeable4)) - LayoutUtilKt.getWidthOrZero(placeable5), layoutDirection) + widthOrZero, TextFieldImplKt.getMinimizedAlignment(this.labelPosition).align(placeable2.getWidth(), (i - LayoutUtilKt.getWidthOrZero(placeable4)) - LayoutUtilKt.getWidthOrZero(placeable5), layoutDirection) + widthOrZero, f), iLerp, 0.0f, 4, null);
        }
        if (placeable6 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable6, LayoutUtilKt.getWidthOrZero(placeable4), height + i5, 0.0f, 4, null);
        }
        int widthOrZero2 = LayoutUtilKt.getWidthOrZero(placeable6) + LayoutUtilKt.getWidthOrZero(placeable4);
        int i6 = height + i5;
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, widthOrZero2, i6, 0.0f, 4, null);
        if (placeable3 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, widthOrZero2, i6, 0.0f, 4, null);
        }
        if (placeable7 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable7, (i - LayoutUtilKt.getWidthOrZero(placeable5)) - placeable7.getWidth(), i6, 0.0f, 4, null);
        }
        if (placeable5 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable5, i - placeable5.getWidth(), Alignment.Companion.getCenterVertically().align(placeable5.getHeight(), heightOrZero) + height, 0.0f, 4, null);
        }
        if (placeable9 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable9, 0, height + heightOrZero, 0.0f, 4, null);
        }
    }

    private final void placeWithoutLabel(Placeable.PlacementScope placementScope, int i, int i2, Placeable placeable, Placeable placeable2, Placeable placeable3, Placeable placeable4, Placeable placeable5, Placeable placeable6, Placeable placeable7, Placeable placeable8, float f) {
        Placeable.PlacementScope.m7768place70tqf50$default(placementScope, placeable7, IntOffset.Companion.m9181getZeronOccac(), 0.0f, 2, null);
        int heightOrZero = i2 - LayoutUtilKt.getHeightOrZero(placeable8);
        int iB = w65.b(this.paddingValues.mo1985calculateTopPaddingD9Ej5fM() * f);
        if (placeable3 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, 0, Alignment.Companion.getCenterVertically().align(placeable3.getHeight(), heightOrZero), 0.0f, 4, null);
        }
        if (placeable5 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable5, LayoutUtilKt.getWidthOrZero(placeable3), placeWithoutLabel$calculateVerticalPosition(this, heightOrZero, iB, placeable5), 0.0f, 4, null);
        }
        int widthOrZero = LayoutUtilKt.getWidthOrZero(placeable5) + LayoutUtilKt.getWidthOrZero(placeable3);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, widthOrZero, placeWithoutLabel$calculateVerticalPosition(this, heightOrZero, iB, placeable), 0.0f, 4, null);
        if (placeable2 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, widthOrZero, placeWithoutLabel$calculateVerticalPosition(this, heightOrZero, iB, placeable2), 0.0f, 4, null);
        }
        if (placeable6 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable6, (i - LayoutUtilKt.getWidthOrZero(placeable4)) - placeable6.getWidth(), placeWithoutLabel$calculateVerticalPosition(this, heightOrZero, iB, placeable6), 0.0f, 4, null);
        }
        if (placeable4 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, i - placeable4.getWidth(), Alignment.Companion.getCenterVertically().align(placeable4.getHeight(), heightOrZero), 0.0f, 4, null);
        }
        if (placeable8 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable8, 0, heightOrZero, 0.0f, 4, null);
        }
    }

    private static final int placeWithoutLabel$calculateVerticalPosition(TextFieldMeasurePolicy textFieldMeasurePolicy, int i, int i2, Placeable placeable) {
        return textFieldMeasurePolicy.singleLine ? Alignment.Companion.getCenterVertically().align(placeable.getHeight(), i) : i2;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        return intrinsicHeight(intrinsicMeasureScope, list, i, new t4());
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        return intrinsicWidth(list, i, new q4());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1045measure3p2s80s(final MeasureScope measureScope, List<? extends Measurable> list, long j) {
        Measurable measurable;
        Measurable measurable2;
        long j2;
        Placeable placeableMo7702measureBRTryo0;
        Measurable measurable3;
        Measurable measurable4;
        Measurable measurable5;
        int iMinIntrinsicHeight;
        Measurable measurable6;
        int i;
        Measurable measurable7;
        Measurable measurable8;
        long j3;
        final float fInvoke = this.labelProgress.invoke();
        int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(this.paddingValues.mo1985calculateTopPaddingD9Ej5fM());
        int iMo1428roundToPx0680j_5 = measureScope.mo1428roundToPx0680j_4(this.paddingValues.mo1982calculateBottomPaddingD9Ej5fM());
        long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
        List<? extends Measurable> list2 = list;
        int size = list2.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                measurable = null;
                break;
            }
            measurable = list.get(i2);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable), TextFieldImplKt.LeadingId)) {
                break;
            }
            i2++;
        }
        Measurable measurable9 = measurable;
        Placeable placeableMo7702measureBRTryo1 = measurable9 != null ? measurable9.mo7702measureBRTryo0(jM8985copyZbe2FdA$default) : null;
        int widthOrZero = LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo1);
        int iMax = Math.max(0, LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo1));
        int size2 = list2.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size2) {
                measurable2 = null;
                break;
            }
            measurable2 = list.get(i3);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable2), TextFieldImplKt.TrailingId)) {
                break;
            }
            i3++;
        }
        Measurable measurable10 = measurable2;
        if (measurable10 != null) {
            j2 = jM8985copyZbe2FdA$default;
            placeableMo7702measureBRTryo0 = measurable10.mo7702measureBRTryo0(ConstraintsKt.m9015offsetNN6EwU$default(j2, -widthOrZero, 0, 2, null));
        } else {
            j2 = jM8985copyZbe2FdA$default;
            placeableMo7702measureBRTryo0 = null;
        }
        int widthOrZero2 = LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo0) + widthOrZero;
        int iMax2 = Math.max(iMax, LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo0));
        int size3 = list2.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size3) {
                measurable3 = null;
                break;
            }
            measurable3 = list.get(i4);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable3), TextFieldImplKt.PrefixId)) {
                break;
            }
            i4++;
        }
        Measurable measurable11 = measurable3;
        Placeable placeableMo7702measureBRTryo2 = measurable11 != null ? measurable11.mo7702measureBRTryo0(ConstraintsKt.m9015offsetNN6EwU$default(j2, -widthOrZero2, 0, 2, null)) : null;
        int widthOrZero3 = LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo2) + widthOrZero2;
        int iMax3 = Math.max(iMax2, LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo2));
        int size4 = list2.size();
        int i5 = 0;
        while (true) {
            if (i5 >= size4) {
                measurable4 = null;
                break;
            }
            measurable4 = list.get(i5);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable4), TextFieldImplKt.SuffixId)) {
                break;
            }
            i5++;
        }
        Measurable measurable12 = measurable4;
        Placeable placeableMo7702measureBRTryo3 = measurable12 != null ? measurable12.mo7702measureBRTryo0(ConstraintsKt.m9015offsetNN6EwU$default(j2, -widthOrZero3, 0, 2, null)) : null;
        int widthOrZero4 = LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo3) + widthOrZero3;
        int iMax4 = Math.max(iMax3, LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo3));
        boolean z = this.labelPosition instanceof TextFieldLabelPosition.Above;
        int size5 = list2.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size5) {
                measurable5 = null;
                break;
            }
            measurable5 = list.get(i6);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable5), TextFieldImplKt.LabelId)) {
                break;
            }
            i6++;
        }
        Measurable measurable13 = measurable5;
        final r07 r07Var = new r07();
        if (z) {
            iMinIntrinsicHeight = measurable13 != null ? measurable13.minIntrinsicHeight(Constraints.m8997getMinWidthimpl(j)) : 0;
        } else {
            r07Var.b = measurable13 != null ? measurable13.mo7702measureBRTryo0(ConstraintsKt.m9014offsetNN6EwU(j2, -widthOrZero4, -iMo1428roundToPx0680j_5)) : 0;
            iMinIntrinsicHeight = 0;
        }
        int size6 = list2.size();
        int i7 = 0;
        while (true) {
            if (i7 >= size6) {
                measurable6 = measurable13;
                i = iMo1428roundToPx0680j_5;
                measurable7 = null;
                break;
            }
            measurable7 = list.get(i7);
            measurable6 = measurable13;
            i = iMo1428roundToPx0680j_5;
            if (aa4.e(LayoutIdKt.getLayoutId(measurable7), TextFieldImplKt.SupportingId)) {
                break;
            }
            i7++;
            measurable13 = measurable6;
            iMo1428roundToPx0680j_5 = i;
        }
        Measurable measurable14 = measurable7;
        int iMinIntrinsicHeight2 = measurable14 != null ? measurable14.minIntrinsicHeight(Constraints.m8997getMinWidthimpl(j)) : 0;
        int heightOrZero = LayoutUtilKt.getHeightOrZero((Placeable) r07Var.b) + iMinIntrinsicHeight + iMo1428roundToPx0680j_4;
        long jM9014offsetNN6EwU = ConstraintsKt.m9014offsetNN6EwU(Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 11, null), -widthOrZero4, ((-heightOrZero) - i) - iMinIntrinsicHeight2);
        int size7 = list2.size();
        int i8 = 0;
        while (i8 < size7) {
            Measurable measurable15 = list.get(i8);
            int i9 = size7;
            if (aa4.e(LayoutIdKt.getLayoutId(measurable15), TextFieldImplKt.TextFieldId)) {
                final Placeable placeableMo7702measureBRTryo4 = measurable15.mo7702measureBRTryo0(jM9014offsetNN6EwU);
                long jM8985copyZbe2FdA$default2 = Constraints.m8985copyZbe2FdA$default(jM9014offsetNN6EwU, 0, 0, 0, 0, 14, null);
                List<? extends Measurable> list3 = list;
                int size8 = list3.size();
                int i10 = 0;
                while (true) {
                    if (i10 >= size8) {
                        measurable8 = null;
                        break;
                    }
                    measurable8 = list.get(i10);
                    int i11 = size8;
                    if (aa4.e(LayoutIdKt.getLayoutId(measurable8), TextFieldImplKt.PlaceholderId)) {
                        break;
                    }
                    i10++;
                    size8 = i11;
                }
                Measurable measurable16 = measurable8;
                Placeable placeableMo7702measureBRTryo5 = measurable16 != null ? measurable16.mo7702measureBRTryo0(jM8985copyZbe2FdA$default2) : null;
                int iMax5 = Math.max(iMax4, Math.max(LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo4), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo5)) + heightOrZero + i);
                boolean z2 = z;
                long j4 = j2;
                final int i12 = iMo1428roundToPx0680j_4;
                Measurable measurable17 = measurable6;
                final int iM4081calculateWidthyeHjK3Y = m4081calculateWidthyeHjK3Y(LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo1), LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo0), LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo2), LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo3), placeableMo7702measureBRTryo4.getWidth(), LayoutUtilKt.getWidthOrZero((Placeable) r07Var.b), LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo5), j);
                if (z2) {
                    j3 = j4;
                    r07Var.b = measurable17 != null ? measurable17.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j3, 0, iM4081calculateWidthyeHjK3Y, 0, iMinIntrinsicHeight, 5, null)) : 0;
                } else {
                    j3 = j4;
                }
                final Placeable placeableMo7702measureBRTryo6 = measurable14 != null ? measurable14.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(ConstraintsKt.m9015offsetNN6EwU$default(j3, 0, -iMax5, 1, null), 0, iM4081calculateWidthyeHjK3Y, 0, 0, 9, null)) : null;
                int heightOrZero2 = LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo6);
                boolean z3 = z2;
                int iM4080calculateHeightmKXJcVc = m4080calculateHeightmKXJcVc(measureScope, placeableMo7702measureBRTryo4.getHeight(), LayoutUtilKt.getHeightOrZero((Placeable) r07Var.b), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo1), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo0), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo2), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo3), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo5), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo6), j, z3, fInvoke);
                final int heightOrZero3 = (iM4080calculateHeightmKXJcVc - heightOrZero2) - (z3 ? LayoutUtilKt.getHeightOrZero((Placeable) r07Var.b) : 0);
                int size9 = list3.size();
                int i13 = 0;
                while (i13 < size9) {
                    Measurable measurable18 = list.get(i13);
                    if (aa4.e(LayoutIdKt.getLayoutId(measurable18), TextFieldImplKt.ContainerId)) {
                        final Placeable placeableMo7702measureBRTryo7 = measurable18.mo7702measureBRTryo0(ConstraintsKt.Constraints(iM4081calculateWidthyeHjK3Y != Integer.MAX_VALUE ? iM4081calculateWidthyeHjK3Y : 0, iM4081calculateWidthyeHjK3Y, heightOrZero3 != Integer.MAX_VALUE ? heightOrZero3 : 0, heightOrZero3));
                        final int i14 = iM4080calculateHeightmKXJcVc;
                        final boolean z4 = z3;
                        final Placeable placeable = placeableMo7702measureBRTryo1;
                        final Placeable placeable2 = placeableMo7702measureBRTryo0;
                        final Placeable placeable3 = placeableMo7702measureBRTryo2;
                        final Placeable placeable4 = placeableMo7702measureBRTryo3;
                        final Placeable placeable5 = placeableMo7702measureBRTryo5;
                        return MeasureScope.layout$default(measureScope, iM4081calculateWidthyeHjK3Y, i14, null, new nl3() { // from class: androidx.compose.material3.r4
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return TextFieldMeasurePolicy.measure_3p2s80s$lambda$9(r07Var, z4, this, heightOrZero3, i12, measureScope, iM4081calculateWidthyeHjK3Y, i14, placeableMo7702measureBRTryo4, placeable5, placeable, placeable2, placeable3, placeable4, placeableMo7702measureBRTryo7, placeableMo7702measureBRTryo6, fInvoke, (Placeable.PlacementScope) obj);
                            }
                        }, 4, null);
                    }
                    i13++;
                    iM4080calculateHeightmKXJcVc = iM4080calculateHeightmKXJcVc;
                    z3 = z3;
                }
                throw hm.d("Collection contains no element matching the predicate.");
            }
            i8++;
            size7 = i9;
            j2 = j2;
            z = z;
            jM9014offsetNN6EwU = jM9014offsetNN6EwU;
            iMo1428roundToPx0680j_4 = iMo1428roundToPx0680j_4;
            measurable6 = measurable6;
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        return intrinsicHeight(intrinsicMeasureScope, list, i, new s4());
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        return intrinsicWidth(list, i, new p4());
    }

    public /* synthetic */ TextFieldMeasurePolicy(boolean z, TextFieldLabelPosition textFieldLabelPosition, FloatProducer floatProducer, PaddingValues paddingValues, float f, jh2 jh2Var) {
        this(z, textFieldLabelPosition, floatProducer, paddingValues, f);
    }
}
