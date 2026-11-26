package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.geometry.Size;
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
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.muxer.MuxerUtil;
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
final class OutlinedTextFieldMeasurePolicy implements MeasurePolicy {
    private final float horizontalIconPadding;
    private final TextFieldLabelPosition labelPosition;
    private final FloatProducer labelProgress;
    private final nl3<Size, j59> onLabelMeasured;
    private final PaddingValues paddingValues;
    private final boolean singleLine;

    /* JADX WARN: Multi-variable type inference failed */
    private OutlinedTextFieldMeasurePolicy(nl3<? super Size, j59> nl3Var, boolean z, TextFieldLabelPosition textFieldLabelPosition, FloatProducer floatProducer, PaddingValues paddingValues, float f) {
        this.onLabelMeasured = nl3Var;
        this.singleLine = z;
        this.labelPosition = textFieldLabelPosition;
        this.labelProgress = floatProducer;
        this.paddingValues = paddingValues;
        this.horizontalIconPadding = f;
    }

    /* JADX INFO: renamed from: calculateHeight-mKXJcVc, reason: not valid java name */
    private final int m3727calculateHeightmKXJcVc(Density density, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j, boolean z, float f) {
        int iB = pp1.b(i5, i7, i3, i4, z ? 0 : MathHelpersKt.lerp(i6, 0, f));
        float fMo1434toPx0680j_4 = density.mo1434toPx0680j_4(this.paddingValues.mo1985calculateTopPaddingD9Ej5fM());
        if (!z) {
            fMo1434toPx0680j_4 = MathHelpersKt.lerp(fMo1434toPx0680j_4, Math.max(fMo1434toPx0680j_4, i6 / 2.0f), f);
        }
        float fMo1434toPx0680j_5 = fMo1434toPx0680j_4 + iB + density.mo1434toPx0680j_4(this.paddingValues.mo1982calculateBottomPaddingD9Ej5fM());
        if (!z) {
            i6 = 0;
        }
        return ConstraintsKt.m9011constrainHeightK40F9xA(j, Math.max(i, Math.max(i2, w65.b(fMo1434toPx0680j_5))) + i6 + i8);
    }

    /* JADX INFO: renamed from: calculateWidth-IzADHW4, reason: not valid java name */
    private final int m3728calculateWidthIzADHW4(Density density, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, float f) {
        int i8 = i3 + i4;
        int iMax = Math.max(i5 + i8, Math.max(i7 + i8, MathHelpersKt.lerp(i6, 0, f))) + i + i2;
        PaddingValues paddingValues = this.paddingValues;
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        return ConstraintsKt.m9012constrainWidthK40F9xA(j, Math.max(iMax, w65.b((i6 + density.mo1434toPx0680j_4(Dp.m9042constructorimpl(this.paddingValues.mo1984calculateRightPaddingu2uoSUM(layoutDirection) + paddingValues.mo1983calculateLeftPaddingu2uoSUM(layoutDirection)))) * f)));
    }

    private final int intrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i, bm3<? super IntrinsicMeasurable, ? super Integer, Integer> bm3Var) {
        IntrinsicMeasurable intrinsicMeasurable;
        int iSubtractConstraintSafely;
        int iIntValue;
        IntrinsicMeasurable intrinsicMeasurable2;
        int iIntValue2;
        IntrinsicMeasurable intrinsicMeasurable3;
        IntrinsicMeasurable intrinsicMeasurable4;
        int iIntValue3;
        IntrinsicMeasurable intrinsicMeasurable5;
        int iIntValue4;
        int i2;
        IntrinsicMeasurable intrinsicMeasurable6;
        IntrinsicMeasurable intrinsicMeasurable7;
        OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy = this;
        float fInvoke = outlinedTextFieldMeasurePolicy.labelProgress.invoke();
        List<? extends IntrinsicMeasurable> list2 = list;
        int size = list2.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                intrinsicMeasurable = null;
                break;
            }
            intrinsicMeasurable = list.get(i3);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable), TextFieldImplKt.LeadingId)) {
                break;
            }
            i3++;
        }
        IntrinsicMeasurable intrinsicMeasurable8 = intrinsicMeasurable;
        if (intrinsicMeasurable8 != null) {
            iSubtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(i, intrinsicMeasurable8.maxIntrinsicWidth(Integer.MAX_VALUE));
            iIntValue = bm3Var.invoke(intrinsicMeasurable8, Integer.valueOf(i)).intValue();
        } else {
            iSubtractConstraintSafely = i;
            iIntValue = 0;
        }
        int size2 = list2.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size2) {
                intrinsicMeasurable2 = null;
                break;
            }
            intrinsicMeasurable2 = list.get(i4);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable2), TextFieldImplKt.TrailingId)) {
                break;
            }
            i4++;
        }
        IntrinsicMeasurable intrinsicMeasurable9 = intrinsicMeasurable2;
        if (intrinsicMeasurable9 != null) {
            iSubtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(iSubtractConstraintSafely, intrinsicMeasurable9.maxIntrinsicWidth(Integer.MAX_VALUE));
            iIntValue2 = bm3Var.invoke(intrinsicMeasurable9, Integer.valueOf(i)).intValue();
        } else {
            iIntValue2 = 0;
        }
        int size3 = list2.size();
        int i5 = 0;
        while (true) {
            if (i5 >= size3) {
                intrinsicMeasurable3 = null;
                break;
            }
            intrinsicMeasurable3 = list.get(i5);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable3), TextFieldImplKt.LabelId)) {
                break;
            }
            i5++;
        }
        IntrinsicMeasurable intrinsicMeasurable10 = intrinsicMeasurable3;
        int iIntValue5 = intrinsicMeasurable10 != null ? bm3Var.invoke(intrinsicMeasurable10, Integer.valueOf(MathHelpersKt.lerp(iSubtractConstraintSafely, i, fInvoke))).intValue() : 0;
        int size4 = list2.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size4) {
                intrinsicMeasurable4 = null;
                break;
            }
            intrinsicMeasurable4 = list.get(i6);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable4), TextFieldImplKt.PrefixId)) {
                break;
            }
            i6++;
        }
        IntrinsicMeasurable intrinsicMeasurable11 = intrinsicMeasurable4;
        if (intrinsicMeasurable11 != null) {
            iIntValue3 = bm3Var.invoke(intrinsicMeasurable11, Integer.valueOf(iSubtractConstraintSafely)).intValue();
            iSubtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(iSubtractConstraintSafely, intrinsicMeasurable11.maxIntrinsicWidth(Integer.MAX_VALUE));
        } else {
            iIntValue3 = 0;
        }
        int size5 = list2.size();
        int i7 = 0;
        while (true) {
            if (i7 >= size5) {
                intrinsicMeasurable5 = null;
                break;
            }
            intrinsicMeasurable5 = list.get(i7);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable5), TextFieldImplKt.SuffixId)) {
                break;
            }
            i7++;
        }
        IntrinsicMeasurable intrinsicMeasurable12 = intrinsicMeasurable5;
        if (intrinsicMeasurable12 != null) {
            iIntValue4 = bm3Var.invoke(intrinsicMeasurable12, Integer.valueOf(iSubtractConstraintSafely)).intValue();
            iSubtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(iSubtractConstraintSafely, intrinsicMeasurable12.maxIntrinsicWidth(Integer.MAX_VALUE));
        } else {
            iIntValue4 = 0;
        }
        int size6 = list2.size();
        int i8 = 0;
        while (i8 < size6) {
            IntrinsicMeasurable intrinsicMeasurable13 = list.get(i8);
            if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable13), TextFieldImplKt.TextFieldId)) {
                int iIntValue6 = bm3Var.invoke(intrinsicMeasurable13, Integer.valueOf(iSubtractConstraintSafely)).intValue();
                List<? extends IntrinsicMeasurable> list3 = list;
                int size7 = list3.size();
                int i9 = 0;
                while (true) {
                    if (i9 >= size7) {
                        i2 = iIntValue6;
                        intrinsicMeasurable6 = null;
                        break;
                    }
                    intrinsicMeasurable6 = list.get(i9);
                    i2 = iIntValue6;
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable6), TextFieldImplKt.PlaceholderId)) {
                        break;
                    }
                    i9++;
                    iIntValue6 = i2;
                }
                IntrinsicMeasurable intrinsicMeasurable14 = intrinsicMeasurable6;
                int iIntValue7 = intrinsicMeasurable14 != null ? bm3Var.invoke(intrinsicMeasurable14, Integer.valueOf(iSubtractConstraintSafely)).intValue() : 0;
                int size8 = list3.size();
                int i10 = 0;
                while (true) {
                    if (i10 >= size8) {
                        intrinsicMeasurable7 = null;
                        break;
                    }
                    intrinsicMeasurable7 = list.get(i10);
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable7), TextFieldImplKt.SupportingId)) {
                        break;
                    }
                    i10++;
                }
                IntrinsicMeasurable intrinsicMeasurable15 = intrinsicMeasurable7;
                return outlinedTextFieldMeasurePolicy.m3727calculateHeightmKXJcVc(intrinsicMeasureScope, iIntValue, iIntValue2, iIntValue3, iIntValue4, i2, iIntValue5, iIntValue7, intrinsicMeasurable15 != null ? bm3Var.invoke(intrinsicMeasurable15, Integer.valueOf(i)).intValue() : 0, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null), outlinedTextFieldMeasurePolicy.labelPosition instanceof TextFieldLabelPosition.Above, fInvoke);
            }
            i8++;
            iIntValue5 = iIntValue5;
            outlinedTextFieldMeasurePolicy = this;
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }

    private final int intrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i, bm3<? super IntrinsicMeasurable, ? super Integer, Integer> bm3Var) {
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
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable4), TextFieldImplKt.LeadingId)) {
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
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable5), TextFieldImplKt.PrefixId)) {
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
                    if (aa4.e(LayoutUtilKt.getLayoutId(intrinsicMeasurable6), TextFieldImplKt.SuffixId)) {
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
                return m3728calculateWidthIzADHW4(intrinsicMeasureScope, iIntValue4, iIntValue3, iIntValue5, iIntValue6, iIntValue, iIntValue2, intrinsicMeasurable14 != null ? bm3Var.invoke(intrinsicMeasurable14, Integer.valueOf(i)).intValue() : 0, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null), this.labelProgress.invoke());
            }
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 measure_3p2s80s$lambda$11(OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy, int i, int i2, Placeable placeable, Placeable placeable2, Placeable placeable3, Placeable placeable4, Placeable placeable5, r07 r07Var, Placeable placeable6, Placeable placeable7, Placeable placeable8, MeasureScope measureScope, boolean z, float f, Placeable.PlacementScope placementScope) {
        outlinedTextFieldMeasurePolicy.place(placementScope, i, i2, placeable, placeable2, placeable3, placeable4, placeable5, (Placeable) r07Var.b, placeable6, placeable7, placeable8, measureScope.getDensity(), measureScope.getLayoutDirection(), z, f, measureScope.mo1434toPx0680j_4(outlinedTextFieldMeasurePolicy.horizontalIconPadding));
        return j59.a;
    }

    private final void place(Placeable.PlacementScope placementScope, int i, int i2, Placeable placeable, Placeable placeable2, Placeable placeable3, Placeable placeable4, Placeable placeable5, Placeable placeable6, Placeable placeable7, Placeable placeable8, Placeable placeable9, float f, LayoutDirection layoutDirection, boolean z, float f2, float f3) {
        int i3;
        int i4;
        int i5;
        int iAlign;
        float f4;
        float width;
        int heightOrZero = z ? LayoutUtilKt.getHeightOrZero(placeable6) : 0;
        Placeable.PlacementScope.place$default(placementScope, placeable8, 0, heightOrZero, 0.0f, 4, null);
        int heightOrZero2 = (i - LayoutUtilKt.getHeightOrZero(placeable9)) - (z ? LayoutUtilKt.getHeightOrZero(placeable6) : 0);
        int iB = w65.b(this.paddingValues.mo1985calculateTopPaddingD9Ej5fM() * f);
        if (placeable != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, Alignment.Companion.getCenterVertically().align(placeable.getHeight(), heightOrZero2) + heightOrZero, 0.0f, 4, null);
        }
        if (placeable6 != null) {
            if (z) {
                iAlign = 0;
            } else {
                iAlign = this.singleLine ? Alignment.Companion.getCenterVertically().align(placeable6.getHeight(), heightOrZero2) : iB;
            }
            int iLerp = MathHelpersKt.lerp(iAlign, z ? 0 : -(placeable6.getHeight() / 2), f2);
            if (z) {
                Placeable.PlacementScope.place$default(placementScope, placeable6, TextFieldImplKt.getMinimizedAlignment(this.labelPosition).align(placeable6.getWidth(), i2, layoutDirection), iLerp, 0.0f, 4, null);
            } else {
                float fCalculateStartPadding = PaddingKt.calculateStartPadding(this.paddingValues, layoutDirection) * f;
                float fCalculateEndPadding = PaddingKt.calculateEndPadding(this.paddingValues, layoutDirection) * f;
                if (placeable == null) {
                    f4 = fCalculateStartPadding;
                } else {
                    float width2 = placeable.getWidth();
                    float f5 = fCalculateStartPadding - f3;
                    if (f5 < 0.0f) {
                        f5 = 0.0f;
                    }
                    f4 = width2 + f5;
                }
                if (placeable2 == null) {
                    width = fCalculateEndPadding;
                } else {
                    float f6 = fCalculateEndPadding - f3;
                    width = placeable2.getWidth() + (f6 >= 0.0f ? f6 : 0.0f);
                }
                LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
                Placeable.PlacementScope.place$default(placementScope, placeable6, w65.b(MathHelpersKt.lerp(TextFieldImplKt.getExpandedAlignment(this.labelPosition).align(placeable6.getWidth(), i2 - w65.b(f4 + width), layoutDirection) + (layoutDirection == layoutDirection2 ? f4 : width), TextFieldImplKt.getMinimizedAlignment(this.labelPosition).align(placeable6.getWidth(), i2 - w65.b(fCalculateStartPadding + fCalculateEndPadding), layoutDirection) + (layoutDirection == layoutDirection2 ? fCalculateStartPadding : fCalculateEndPadding), f2)), iLerp, 0.0f, 4, null);
            }
        }
        if (placeable3 != null) {
            i3 = heightOrZero2;
            i4 = iB;
            i5 = heightOrZero;
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, LayoutUtilKt.getWidthOrZero(placeable), place$calculateVerticalPosition(i5, this, i3, i4, placeable6, placeable3), 0.0f, 4, null);
        } else {
            i3 = heightOrZero2;
            i4 = iB;
            i5 = heightOrZero;
        }
        int widthOrZero = LayoutUtilKt.getWidthOrZero(placeable3) + LayoutUtilKt.getWidthOrZero(placeable);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable5, widthOrZero, place$calculateVerticalPosition(i5, this, i3, i4, placeable6, placeable5), 0.0f, 4, null);
        if (placeable7 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable7, widthOrZero, place$calculateVerticalPosition(i5, this, i3, i4, placeable6, placeable7), 0.0f, 4, null);
        }
        if (placeable4 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, (i2 - LayoutUtilKt.getWidthOrZero(placeable2)) - placeable4.getWidth(), place$calculateVerticalPosition(i5, this, i3, i4, placeable6, placeable4), 0.0f, 4, null);
        }
        if (placeable2 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i2 - placeable2.getWidth(), Alignment.Companion.getCenterVertically().align(placeable2.getHeight(), i3) + i5, 0.0f, 4, null);
        }
        if (placeable9 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable9, 0, i5 + i3, 0.0f, 4, null);
        }
    }

    private static final int place$calculateVerticalPosition(int i, OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy, int i2, int i3, Placeable placeable, Placeable placeable2) {
        if (outlinedTextFieldMeasurePolicy.singleLine) {
            i3 = Alignment.Companion.getCenterVertically().align(placeable2.getHeight(), i2);
        }
        int i4 = i + i3;
        return outlinedTextFieldMeasurePolicy.labelPosition instanceof TextFieldLabelPosition.Above ? i4 : Math.max(i4, LayoutUtilKt.getHeightOrZero(placeable) / 2);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        return intrinsicHeight(intrinsicMeasureScope, list, i, new l3());
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        return intrinsicWidth(intrinsicMeasureScope, list, i, new j3());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [T, androidx.compose.ui.layout.Placeable] */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r7v41 */
    /* JADX WARN: Type inference failed for: r7v42, types: [T, androidx.compose.ui.layout.Placeable] */
    /* JADX WARN: Type inference failed for: r7v59 */
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
        long j3;
        int iMinIntrinsicHeight;
        List<? extends Measurable> list2;
        List<? extends Measurable> list3;
        Measurable measurable6;
        Measurable measurable7;
        long j4;
        long jM6065getZeroNHjbRc;
        long jM6065getZeroNHjbRc2;
        final float fInvoke = this.labelProgress.invoke();
        int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(this.paddingValues.mo1982calculateBottomPaddingD9Ej5fM());
        long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
        List<? extends Measurable> list4 = list;
        int size = list4.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                measurable = null;
                break;
            }
            measurable = list.get(i);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable), TextFieldImplKt.LeadingId)) {
                break;
            }
            i++;
        }
        Measurable measurable8 = measurable;
        Placeable placeableMo7702measureBRTryo1 = measurable8 != null ? measurable8.mo7702measureBRTryo0(jM8985copyZbe2FdA$default) : null;
        int widthOrZero = LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo1);
        int iMax = Math.max(0, LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo1));
        int size2 = list4.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size2) {
                measurable2 = null;
                break;
            }
            measurable2 = list.get(i2);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable2), TextFieldImplKt.TrailingId)) {
                break;
            }
            i2++;
        }
        Measurable measurable9 = measurable2;
        if (measurable9 != null) {
            j2 = jM8985copyZbe2FdA$default;
            placeableMo7702measureBRTryo0 = measurable9.mo7702measureBRTryo0(ConstraintsKt.m9015offsetNN6EwU$default(j2, -widthOrZero, 0, 2, null));
        } else {
            j2 = jM8985copyZbe2FdA$default;
            placeableMo7702measureBRTryo0 = null;
        }
        int widthOrZero2 = LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo0) + widthOrZero;
        int iMax2 = Math.max(iMax, LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo0));
        int size3 = list4.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size3) {
                measurable3 = null;
                break;
            }
            measurable3 = list.get(i3);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable3), TextFieldImplKt.PrefixId)) {
                break;
            }
            i3++;
        }
        Measurable measurable10 = measurable3;
        Placeable placeableMo7702measureBRTryo2 = measurable10 != null ? measurable10.mo7702measureBRTryo0(ConstraintsKt.m9015offsetNN6EwU$default(j2, -widthOrZero2, 0, 2, null)) : null;
        int widthOrZero3 = LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo2) + widthOrZero2;
        int iMax3 = Math.max(iMax2, LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo2));
        int size4 = list4.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size4) {
                measurable4 = null;
                break;
            }
            measurable4 = list.get(i4);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable4), TextFieldImplKt.SuffixId)) {
                break;
            }
            i4++;
        }
        Measurable measurable11 = measurable4;
        Placeable placeableMo7702measureBRTryo3 = measurable11 != null ? measurable11.mo7702measureBRTryo0(ConstraintsKt.m9015offsetNN6EwU$default(j2, -widthOrZero3, 0, 2, null)) : null;
        int widthOrZero4 = LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo3) + widthOrZero3;
        int iMax4 = Math.max(iMax3, LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo3));
        boolean z = this.labelPosition instanceof TextFieldLabelPosition.Above;
        int size5 = list4.size();
        int i5 = 0;
        while (true) {
            if (i5 >= size5) {
                measurable5 = null;
                break;
            }
            measurable5 = list.get(i5);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable5), TextFieldImplKt.LabelId)) {
                break;
            }
            i5++;
        }
        Measurable measurable12 = measurable5;
        r07 r07Var = new r07();
        if (z) {
            j3 = j2;
            iMinIntrinsicHeight = measurable12 != null ? measurable12.minIntrinsicHeight(Constraints.m8997getMinWidthimpl(j)) : 0;
        } else {
            int iMo1428roundToPx0680j_5 = measureScope.mo1428roundToPx0680j_4(this.paddingValues.mo1984calculateRightPaddingu2uoSUM(measureScope.getLayoutDirection())) + measureScope.mo1428roundToPx0680j_4(this.paddingValues.mo1983calculateLeftPaddingu2uoSUM(measureScope.getLayoutDirection()));
            j3 = j2;
            ?? Mo7702measureBRTryo0 = measurable12 != null ? measurable12.mo7702measureBRTryo0(ConstraintsKt.m9014offsetNN6EwU(j3, -MathHelpersKt.lerp(widthOrZero4 + iMo1428roundToPx0680j_5, iMo1428roundToPx0680j_5, fInvoke), -iMo1428roundToPx0680j_4)) : 0;
            r07Var.b = Mo7702measureBRTryo0;
            if (Mo7702measureBRTryo0 != 0) {
                jM6065getZeroNHjbRc2 = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(Mo7702measureBRTryo0.getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Mo7702measureBRTryo0.getWidth())) << 32));
            } else {
                jM6065getZeroNHjbRc2 = Size.Companion.m6065getZeroNHjbRc();
            }
            this.onLabelMeasured.invoke(Size.m6044boximpl(jM6065getZeroNHjbRc2));
            iMinIntrinsicHeight = 0;
        }
        int size6 = list4.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size6) {
                list2 = list;
                list3 = list4;
                measurable6 = null;
                break;
            }
            list2 = list;
            measurable6 = list2.get(i6);
            list3 = list4;
            int i7 = size6;
            if (aa4.e(LayoutIdKt.getLayoutId(measurable6), TextFieldImplKt.SupportingId)) {
                break;
            }
            i6++;
            size6 = i7;
            list4 = list3;
        }
        Measurable measurable13 = measurable6;
        int iMinIntrinsicHeight2 = measurable13 != null ? measurable13.minIntrinsicHeight(Constraints.m8997getMinWidthimpl(j)) : 0;
        int iMo1428roundToPx0680j_6 = z ? measureScope.mo1428roundToPx0680j_4(this.paddingValues.mo1985calculateTopPaddingD9Ej5fM()) : Math.max(LayoutUtilKt.getHeightOrZero((Placeable) r07Var.b) / 2, measureScope.mo1428roundToPx0680j_4(this.paddingValues.mo1985calculateTopPaddingD9Ej5fM()));
        long jM8985copyZbe2FdA$default2 = Constraints.m8985copyZbe2FdA$default(ConstraintsKt.m9014offsetNN6EwU(j, -widthOrZero4, (((-iMo1428roundToPx0680j_4) - iMo1428roundToPx0680j_6) - iMinIntrinsicHeight) - iMinIntrinsicHeight2), 0, 0, 0, 0, 11, null);
        int size7 = list3.size();
        int i8 = 0;
        while (i8 < size7) {
            Measurable measurable14 = list2.get(i8);
            int i9 = iMo1428roundToPx0680j_4;
            int i10 = size7;
            if (aa4.e(LayoutIdKt.getLayoutId(measurable14), TextFieldImplKt.TextFieldId)) {
                final Placeable placeableMo7702measureBRTryo4 = measurable14.mo7702measureBRTryo0(jM8985copyZbe2FdA$default2);
                long jM8985copyZbe2FdA$default3 = Constraints.m8985copyZbe2FdA$default(jM8985copyZbe2FdA$default2, 0, 0, 0, 0, 14, null);
                List<? extends Measurable> list5 = list2;
                int size8 = list5.size();
                int i11 = 0;
                while (true) {
                    if (i11 >= size8) {
                        measurable7 = null;
                        break;
                    }
                    measurable7 = list2.get(i11);
                    int i12 = size8;
                    if (aa4.e(LayoutIdKt.getLayoutId(measurable7), TextFieldImplKt.PlaceholderId)) {
                        break;
                    }
                    i11++;
                    size8 = i12;
                }
                Measurable measurable15 = measurable7;
                Placeable placeableMo7702measureBRTryo5 = measurable15 != null ? measurable15.mo7702measureBRTryo0(jM8985copyZbe2FdA$default3) : null;
                int iMax5 = Math.max(iMax4, Math.max(LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo4), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo5)) + iMo1428roundToPx0680j_6 + i9);
                r07 r07Var2 = r07Var;
                long j5 = j3;
                boolean z2 = z;
                int iM3728calculateWidthIzADHW4 = m3728calculateWidthIzADHW4(measureScope, LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo1), LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo0), LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo2), LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo3), placeableMo7702measureBRTryo4.getWidth(), LayoutUtilKt.getWidthOrZero((Placeable) r07Var.b), LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo5), j, fInvoke);
                if (z2) {
                    Measurable measurable16 = measurable12;
                    j4 = j5;
                    ?? Mo7702measureBRTryo1 = measurable16 != null ? measurable16.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j4, 0, iM3728calculateWidthIzADHW4, 0, iMinIntrinsicHeight, 5, null)) : 0;
                    r07Var2.b = Mo7702measureBRTryo1;
                    if (Mo7702measureBRTryo1 != 0) {
                        jM6065getZeroNHjbRc = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(Mo7702measureBRTryo1.getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Mo7702measureBRTryo1.getWidth())) << 32));
                    } else {
                        jM6065getZeroNHjbRc = Size.Companion.m6065getZeroNHjbRc();
                    }
                    this.onLabelMeasured.invoke(Size.m6044boximpl(jM6065getZeroNHjbRc));
                } else {
                    j4 = j5;
                }
                long jM8985copyZbe2FdA$default4 = Constraints.m8985copyZbe2FdA$default(ConstraintsKt.m9015offsetNN6EwU$default(j4, 0, -iMax5, 1, null), 0, iM3728calculateWidthIzADHW4, 0, 0, 9, null);
                int i13 = iM3728calculateWidthIzADHW4;
                Placeable placeableMo7702measureBRTryo6 = measurable13 != null ? measurable13.mo7702measureBRTryo0(jM8985copyZbe2FdA$default4) : null;
                int heightOrZero = LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo6);
                boolean z3 = z2;
                final int iM3727calculateHeightmKXJcVc = m3727calculateHeightmKXJcVc(measureScope, LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo1), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo0), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo2), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo3), placeableMo7702measureBRTryo4.getHeight(), LayoutUtilKt.getHeightOrZero((Placeable) r07Var2.b), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo5), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo6), j, z3, fInvoke);
                int heightOrZero2 = (iM3727calculateHeightmKXJcVc - heightOrZero) - (z3 ? LayoutUtilKt.getHeightOrZero((Placeable) r07Var2.b) : 0);
                int size9 = list5.size();
                int i14 = 0;
                while (i14 < size9) {
                    Measurable measurable17 = list.get(i14);
                    if (aa4.e(LayoutIdKt.getLayoutId(measurable17), TextFieldImplKt.ContainerId)) {
                        final Placeable placeableMo7702measureBRTryo7 = measurable17.mo7702measureBRTryo0(ConstraintsKt.Constraints(i13 != Integer.MAX_VALUE ? i13 : 0, i13, heightOrZero2 != Integer.MAX_VALUE ? heightOrZero2 : 0, heightOrZero2));
                        final r07 r07Var3 = r07Var2;
                        final int i15 = i13;
                        final Placeable placeable = placeableMo7702measureBRTryo0;
                        final Placeable placeable2 = placeableMo7702measureBRTryo2;
                        final Placeable placeable3 = placeableMo7702measureBRTryo3;
                        final Placeable placeable4 = placeableMo7702measureBRTryo5;
                        final boolean z4 = z3;
                        final Placeable placeable5 = placeableMo7702measureBRTryo6;
                        final Placeable placeable6 = placeableMo7702measureBRTryo1;
                        return MeasureScope.layout$default(measureScope, i15, iM3727calculateHeightmKXJcVc, null, new nl3() { // from class: androidx.compose.material3.k3
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return OutlinedTextFieldMeasurePolicy.measure_3p2s80s$lambda$11(this.b, iM3727calculateHeightmKXJcVc, i15, placeable6, placeable, placeable2, placeable3, placeableMo7702measureBRTryo4, r07Var3, placeable4, placeableMo7702measureBRTryo7, placeable5, measureScope, z4, fInvoke, (Placeable.PlacementScope) obj);
                            }
                        }, 4, null);
                    }
                    i14++;
                    iM3727calculateHeightmKXJcVc = iM3727calculateHeightmKXJcVc;
                    z3 = z3;
                    r07Var2 = r07Var2;
                    i13 = i13;
                    placeableMo7702measureBRTryo6 = placeableMo7702measureBRTryo6;
                }
                throw hm.d("Collection contains no element matching the predicate.");
            }
            i8++;
            z = z;
            iMo1428roundToPx0680j_4 = i9;
            size7 = i10;
            j3 = j3;
            list2 = list2;
            r07Var = r07Var;
            jM8985copyZbe2FdA$default2 = jM8985copyZbe2FdA$default2;
            measurable12 = measurable12;
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        return intrinsicHeight(intrinsicMeasureScope, list, i, new i3());
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        return intrinsicWidth(intrinsicMeasureScope, list, i, new m3());
    }

    public /* synthetic */ OutlinedTextFieldMeasurePolicy(nl3 nl3Var, boolean z, TextFieldLabelPosition textFieldLabelPosition, FloatProducer floatProducer, PaddingValues paddingValues, float f, jh2 jh2Var) {
        this(nl3Var, z, textFieldLabelPosition, floatProducer, paddingValues, f);
    }
}
