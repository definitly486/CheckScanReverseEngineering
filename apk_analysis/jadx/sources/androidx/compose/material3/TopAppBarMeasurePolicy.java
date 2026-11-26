package androidx.compose.material3;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.LayoutDirection;
import com.tapjoy.TJAdUnitConstants;
import defpackage.aa4;
import defpackage.hm;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.tg;
import defpackage.w65;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class TopAppBarMeasurePolicy implements MeasurePolicy {
    private final float height;
    private final FloatProducer scrolledOffset;
    private final int titleBottomPadding;
    private final Alignment.Horizontal titleHorizontalAlignment;
    private final Arrangement.Vertical titleVerticalArrangement;

    private TopAppBarMeasurePolicy(FloatProducer floatProducer, Arrangement.Vertical vertical, Alignment.Horizontal horizontal, int i, float f) {
        this.scrolledOffset = floatProducer;
        this.titleVerticalArrangement = vertical;
        this.titleHorizontalAlignment = horizontal;
        this.titleBottomPadding = i;
        this.height = f;
    }

    /* JADX INFO: renamed from: placeTopAppBar-mpW86Vk, reason: not valid java name */
    private final MeasureResult m4302placeTopAppBarmpW86Vk(final MeasureScope measureScope, final long j, final int i, final int i2, final Placeable placeable, final Placeable placeable2, final Placeable placeable3, final int i3) {
        return MeasureScope.layout$default(measureScope, Constraints.m8995getMaxWidthimpl(j), i, null, new nl3() { // from class: androidx.compose.material3.k5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TopAppBarMeasurePolicy.placeTopAppBar_mpW86Vk$lambda$8(placeable, i, placeable2, placeable3, j, measureScope, this, i3, i2, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:12:0x0065  */
    /* JADX WARN: Code duplicated, block: B:14:0x006b  */
    /* JADX WARN: Code duplicated, block: B:16:0x0076  */
    /* JADX WARN: Code duplicated, block: B:18:0x007a  */
    /* JADX WARN: Code duplicated, block: B:19:0x0081  */
    /* JADX WARN: Code duplicated, block: B:21:0x008f  */
    /* JADX WARN: Code duplicated, block: B:23:0x009e  */
    public static final j59 placeTopAppBar_mpW86Vk$lambda$8(Placeable placeable, int i, Placeable placeable2, Placeable placeable3, long j, MeasureScope measureScope, TopAppBarMeasurePolicy topAppBarMeasurePolicy, int i2, int i3, Placeable.PlacementScope placementScope) {
        int iM8995getMaxWidthimpl;
        Arrangement.Vertical vertical;
        Arrangement arrangement;
        int i4;
        int i5;
        int height;
        int height2;
        int height3;
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, tg.b(i, 2, placeable), 0.0f, 4, null);
        int iMax = Math.max(measureScope.mo1428roundToPx0680j_4(AppBarKt.TopAppBarTitleInset), placeable.getWidth());
        int width = placeable3.getWidth();
        int iAlign = topAppBarMeasurePolicy.titleHorizontalAlignment.align(placeable2.getWidth(), Constraints.m8995getMaxWidthimpl(j), LayoutDirection.Ltr);
        if (iAlign >= iMax) {
            if (placeable2.getWidth() + iAlign > Constraints.m8995getMaxWidthimpl(j) - width) {
                iM8995getMaxWidthimpl = (Constraints.m8995getMaxWidthimpl(j) - width) - (placeable2.getWidth() + iAlign);
            }
            int i6 = iAlign;
            vertical = topAppBarMeasurePolicy.titleVerticalArrangement;
            arrangement = Arrangement.INSTANCE;
            if (aa4.e(vertical, arrangement.getCenter())) {
                if (aa4.e(vertical, arrangement.getBottom())) {
                    i5 = topAppBarMeasurePolicy.titleBottomPadding;
                    if (i5 == 0) {
                        height3 = i - placeable2.getHeight();
                    } else {
                        height = i5 - (placeable2.getHeight() - i2);
                        height2 = placeable2.getHeight() + height;
                        if (height2 > i3) {
                            height -= height2 - i3;
                        }
                        height3 = (i - placeable2.getHeight()) - Math.max(0, height);
                    }
                } else {
                    i4 = 0;
                }
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i6, i4, 0.0f, 4, null);
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, Constraints.m8995getMaxWidthimpl(j) - placeable3.getWidth(), tg.b(i, 2, placeable3), 0.0f, 4, null);
                return j59.a;
            }
            height3 = tg.b(i, 2, placeable2);
            i4 = height3;
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i6, i4, 0.0f, 4, null);
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, Constraints.m8995getMaxWidthimpl(j) - placeable3.getWidth(), tg.b(i, 2, placeable3), 0.0f, 4, null);
            return j59.a;
        }
        iM8995getMaxWidthimpl = iMax - iAlign;
        iAlign += iM8995getMaxWidthimpl;
        int i7 = iAlign;
        vertical = topAppBarMeasurePolicy.titleVerticalArrangement;
        arrangement = Arrangement.INSTANCE;
        if (aa4.e(vertical, arrangement.getCenter())) {
            if (aa4.e(vertical, arrangement.getBottom())) {
                i5 = topAppBarMeasurePolicy.titleBottomPadding;
                if (i5 == 0) {
                    height3 = i - placeable2.getHeight();
                } else {
                    height = i5 - (placeable2.getHeight() - i2);
                    height2 = placeable2.getHeight() + height;
                    if (height2 > i3) {
                        height -= height2 - i3;
                    }
                    height3 = (i - placeable2.getHeight()) - Math.max(0, height);
                }
            } else {
                i4 = 0;
            }
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i7, i4, 0.0f, 4, null);
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, Constraints.m8995getMaxWidthimpl(j) - placeable3.getWidth(), tg.b(i, 2, placeable3), 0.0f, 4, null);
            return j59.a;
        }
        height3 = tg.b(i, 2, placeable2);
        i4 = height3;
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i7, i4, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, Constraints.m8995getMaxWidthimpl(j) - placeable3.getWidth(), tg.b(i, 2, placeable3), 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: renamed from: getHeight-D9Ej5fM, reason: not valid java name */
    public final float m4303getHeightD9Ej5fM() {
        return this.height;
    }

    public final FloatProducer getScrolledOffset() {
        return this.scrolledOffset;
    }

    public final int getTitleBottomPadding() {
        return this.titleBottomPadding;
    }

    public final Alignment.Horizontal getTitleHorizontalAlignment() {
        return this.titleHorizontalAlignment;
    }

    public final Arrangement.Vertical getTitleVerticalArrangement() {
        return this.titleVerticalArrangement;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        Integer numValueOf;
        int iMo1428roundToPx0680j_4 = intrinsicMeasureScope.mo1428roundToPx0680j_4(this.height);
        if (!list.isEmpty()) {
            numValueOf = Integer.valueOf(list.get(0).maxIntrinsicHeight(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer numValueOf2 = Integer.valueOf(list.get(i2).maxIntrinsicHeight(i));
                    if (numValueOf2.compareTo(numValueOf) > 0) {
                        numValueOf = numValueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        } else {
            numValueOf = null;
        }
        return Math.max(iMo1428roundToPx0680j_4, numValueOf != null ? numValueOf.intValue() : 0);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        int size = list.size();
        int iMaxIntrinsicWidth = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iMaxIntrinsicWidth += list.get(i2).maxIntrinsicWidth(i);
        }
        return iMaxIntrinsicWidth;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        int iM8995getMaxWidthimpl;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Measurable measurable = list.get(i);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable), "navigationIcon")) {
                Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 14, null));
                List<? extends Measurable> list2 = list;
                int size2 = list2.size();
                int i2 = 0;
                while (i2 < size2) {
                    Measurable measurable2 = list.get(i2);
                    if (aa4.e(LayoutIdKt.getLayoutId(measurable2), "actionIcons")) {
                        Placeable placeableMo7702measureBRTryo1 = measurable2.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 14, null));
                        if (Constraints.m8995getMaxWidthimpl(j) == Integer.MAX_VALUE) {
                            iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
                        } else {
                            iM8995getMaxWidthimpl = (Constraints.m8995getMaxWidthimpl(j) - placeableMo7702measureBRTryo0.getWidth()) - placeableMo7702measureBRTryo1.getWidth();
                            if (iM8995getMaxWidthimpl < 0) {
                                iM8995getMaxWidthimpl = 0;
                            }
                        }
                        int i3 = iM8995getMaxWidthimpl;
                        int size3 = list2.size();
                        int i4 = 0;
                        while (i4 < size3) {
                            Measurable measurable3 = list.get(i4);
                            if (aa4.e(LayoutIdKt.getLayoutId(measurable3), TJAdUnitConstants.String.TITLE)) {
                                Placeable placeableMo7702measureBRTryo2 = measurable3.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, i3, 0, 0, 12, null));
                                int i5 = placeableMo7702measureBRTryo2.get(AlignmentLineKt.getLastBaseline()) != Integer.MIN_VALUE ? placeableMo7702measureBRTryo2.get(AlignmentLineKt.getLastBaseline()) : 0;
                                float fInvoke = this.scrolledOffset.invoke();
                                int iB = Float.isNaN(fInvoke) ? 0 : w65.b(fInvoke);
                                int iMax = Math.max(measureScope.mo1428roundToPx0680j_4(this.height), placeableMo7702measureBRTryo2.getHeight());
                                if (Constraints.m8994getMaxHeightimpl(j) != Integer.MAX_VALUE) {
                                    int i6 = iB + iMax;
                                    iMax = i6 >= 0 ? i6 : 0;
                                }
                                return this.m4302placeTopAppBarmpW86Vk(measureScope, j, iMax, iMax, placeableMo7702measureBRTryo0, placeableMo7702measureBRTryo2, placeableMo7702measureBRTryo1, i5);
                            }
                            i4++;
                            this = this;
                        }
                        throw hm.d("Collection contains no element matching the predicate.");
                    }
                    i2++;
                    this = this;
                }
                throw hm.d("Collection contains no element matching the predicate.");
            }
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        Integer numValueOf;
        int iMo1428roundToPx0680j_4 = intrinsicMeasureScope.mo1428roundToPx0680j_4(this.height);
        if (!list.isEmpty()) {
            numValueOf = Integer.valueOf(list.get(0).minIntrinsicHeight(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer numValueOf2 = Integer.valueOf(list.get(i2).minIntrinsicHeight(i));
                    if (numValueOf2.compareTo(numValueOf) > 0) {
                        numValueOf = numValueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        } else {
            numValueOf = null;
        }
        return Math.max(iMo1428roundToPx0680j_4, numValueOf != null ? numValueOf.intValue() : 0);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        int size = list.size();
        int iMinIntrinsicWidth = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iMinIntrinsicWidth += list.get(i2).minIntrinsicWidth(i);
        }
        return iMinIntrinsicWidth;
    }

    public /* synthetic */ TopAppBarMeasurePolicy(FloatProducer floatProducer, Arrangement.Vertical vertical, Alignment.Horizontal horizontal, int i, float f, jh2 jh2Var) {
        this(floatProducer, vertical, horizontal, i, f);
    }
}
