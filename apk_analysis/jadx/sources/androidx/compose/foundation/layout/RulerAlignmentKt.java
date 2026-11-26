package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.RulerAlignmentKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RectRulers;
import androidx.compose.ui.unit.Constraints;
import defpackage.dm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.q92;
import defpackage.w65;

/* JADX INFO: loaded from: classes.dex */
public final class RulerAlignmentKt {
    public static final Modifier fitInside(Modifier modifier, final RectRulers rectRulers) {
        return LayoutModifierKt.layout(modifier, new dm3() { // from class: t87
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return RulerAlignmentKt.fitInside$lambda$0(rectRulers, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult fitInside$lambda$0(final RectRulers rectRulers, MeasureScope measureScope, final Measurable measurable, Constraints constraints) {
        if (Constraints.m8991getHasBoundedWidthimpl(constraints.m9001unboximpl()) && Constraints.m8990getHasBoundedHeightimpl(constraints.m9001unboximpl())) {
            final int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(constraints.m9001unboximpl());
            final int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(constraints.m9001unboximpl());
            return MeasureScope.layout$default(measureScope, iM8995getMaxWidthimpl, iM8994getMaxHeightimpl, null, new nl3() { // from class: q87
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return RulerAlignmentKt.fitInside$lambda$0$0(rectRulers, iM8995getMaxWidthimpl, iM8994getMaxHeightimpl, measurable, (Placeable.PlacementScope) obj);
                }
            }, 4, null);
        }
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(constraints.m9001unboximpl());
        final int width = placeableMo7702measureBRTryo0.getWidth();
        final int height = placeableMo7702measureBRTryo0.getHeight();
        return MeasureScope.layout$default(measureScope, width, height, null, new nl3() { // from class: r87
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return RulerAlignmentKt.fitInside$lambda$0$1(rectRulers, width, height, placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 fitInside$lambda$0$0(RectRulers rectRulers, int i, int i2, Measurable measurable, Placeable.PlacementScope placementScope) {
        int iB = w65.b(placementScope.current(rectRulers.getLeft(), 0.0f));
        if (iB < 0) {
            iB = 0;
        }
        int i3 = iB > i ? i : iB;
        int iB2 = w65.b(placementScope.current(rectRulers.getTop(), 0.0f));
        if (iB2 < 0) {
            iB2 = 0;
        }
        int i4 = iB2 > i2 ? i2 : iB2;
        int iB3 = w65.b(placementScope.current(rectRulers.getRight(), i));
        if (iB3 < 0) {
            iB3 = 0;
        }
        if (iB3 <= i) {
            i = iB3;
        }
        int iB4 = w65.b(placementScope.current(rectRulers.getBottom(), i2));
        int i5 = iB4 >= 0 ? iB4 : 0;
        if (i5 <= i2) {
            i2 = i5;
        }
        Placeable.PlacementScope.place$default(placementScope, measurable.mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(i - i3, i2 - i4)), i3, i4, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 fitInside$lambda$0$1(RectRulers rectRulers, int i, int i2, Placeable placeable, Placeable.PlacementScope placementScope) {
        int iB = w65.b(placementScope.current(rectRulers.getLeft(), 0.0f));
        if (iB < 0) {
            iB = 0;
        }
        if (iB > i) {
            iB = i;
        }
        int iB2 = w65.b(placementScope.current(rectRulers.getTop(), 0.0f));
        if (iB2 < 0) {
            iB2 = 0;
        }
        if (iB2 > i2) {
            iB2 = i2;
        }
        int iB3 = w65.b(placementScope.current(rectRulers.getRight(), i));
        if (iB3 < 0) {
            iB3 = 0;
        }
        if (iB3 > i) {
            iB3 = i;
        }
        int iB4 = w65.b(placementScope.current(rectRulers.getBottom(), i2));
        int i3 = iB4 >= 0 ? iB4 : 0;
        if (i3 > i2) {
            i3 = i2;
        }
        Placeable.PlacementScope.place$default(placementScope, placeable, ((iB + iB3) - i) / 2, ((iB2 + i3) - i2) / 2, 0.0f, 4, null);
        return j59.a;
    }

    public static final Modifier fitOutside(Modifier modifier, final RectRulers rectRulers) {
        return LayoutModifierKt.layout(modifier, new dm3() { // from class: u87
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return RulerAlignmentKt.fitOutside$lambda$0(rectRulers, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult fitOutside$lambda$0(final RectRulers rectRulers, MeasureScope measureScope, final Measurable measurable, Constraints constraints) {
        if (!Constraints.m8991getHasBoundedWidthimpl(constraints.m9001unboximpl()) || !Constraints.m8990getHasBoundedHeightimpl(constraints.m9001unboximpl())) {
            return MeasureScope.layout$default(measureScope, 0, 0, null, new q92(measurable, 2), 4, null);
        }
        final int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(constraints.m9001unboximpl());
        final int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(constraints.m9001unboximpl());
        return MeasureScope.layout$default(measureScope, iM8995getMaxWidthimpl, iM8994getMaxHeightimpl, null, new nl3() { // from class: s87
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return RulerAlignmentKt.fitOutside$lambda$0$0(rectRulers, iM8995getMaxWidthimpl, iM8994getMaxHeightimpl, measurable, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 fitOutside$lambda$0$0(RectRulers rectRulers, int i, int i2, Measurable measurable, Placeable.PlacementScope placementScope) {
        int i3;
        int i4;
        int iB = w65.b(placementScope.current(rectRulers.getLeft(), 0.0f));
        int iB2 = w65.b(placementScope.current(rectRulers.getTop(), 0.0f));
        int iB3 = w65.b(placementScope.current(rectRulers.getRight(), i));
        int iB4 = w65.b(placementScope.current(rectRulers.getBottom(), i2));
        if (iB <= 0) {
            if (iB2 > 0) {
                i2 = iB2;
            } else if (iB3 < i) {
                i -= iB3;
                i3 = iB3;
                i4 = 0;
            } else if (iB4 < i2) {
                i2 -= iB4;
                i4 = iB4;
                i3 = 0;
            } else {
                i = 0;
                i2 = 0;
                i3 = 0;
                i4 = i3;
            }
            Placeable.PlacementScope.place$default(placementScope, measurable.mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(i, i2)), i3, i4, 0.0f, 4, null);
            return j59.a;
        }
        i = iB;
        i3 = 0;
        i4 = i3;
        Placeable.PlacementScope.place$default(placementScope, measurable.mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(i, i2)), i3, i4, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 fitOutside$lambda$0$1(Measurable measurable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, measurable.mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(0, 0)), 0, 0, 0.0f, 4, null);
        return j59.a;
    }
}
