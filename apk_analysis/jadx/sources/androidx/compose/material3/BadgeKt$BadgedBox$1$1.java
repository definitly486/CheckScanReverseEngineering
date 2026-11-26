package androidx.compose.material3;

import androidx.compose.material3.tokens.BadgeTokens;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.aa4;
import defpackage.b36;
import defpackage.hm;
import defpackage.j59;
import defpackage.n05;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class BadgeKt$BadgedBox$1$1 implements MeasurePolicy {
    public static final BadgeKt$BadgedBox$1$1 INSTANCE = new BadgeKt$BadgedBox$1$1();

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$2(Placeable placeable, MeasureScope measureScope, Placeable placeable2, Placeable.PlacementScope placementScope) {
        boolean z = placeable.getWidth() > measureScope.mo1428roundToPx0680j_4(BadgeTokens.INSTANCE.m4510getSizeD9Ej5fM());
        float badgeWithContentHorizontalOffset = z ? BadgeKt.getBadgeWithContentHorizontalOffset() : BadgeKt.getBadgeOffset();
        float badgeWithContentVerticalOffset = z ? BadgeKt.getBadgeWithContentVerticalOffset() : BadgeKt.getBadgeOffset();
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, 0, 0, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, Math.min(placeable2.getWidth() - measureScope.mo1428roundToPx0680j_4(badgeWithContentHorizontalOffset), ((int) placementScope.current(BadgeKt.getBadgeEndRuler(), Float.POSITIVE_INFINITY)) - placeable.getWidth()), Math.max(measureScope.mo1428roundToPx0680j_4(badgeWithContentVerticalOffset) + (-placeable.getHeight()), (int) placementScope.current(BadgeKt.getBadgeTopRuler(), Float.NEGATIVE_INFINITY)), 0.0f, 4, null);
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(final MeasureScope measureScope, List<? extends Measurable> list, long j) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Measurable measurable = list.get(i);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable), "badge")) {
                final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 11, null));
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    Measurable measurable2 = list.get(i2);
                    if (aa4.e(LayoutIdKt.getLayoutId(measurable2), "anchor")) {
                        final Placeable placeableMo7702measureBRTryo1 = measurable2.mo7702measureBRTryo0(j);
                        return measureScope.layout(placeableMo7702measureBRTryo1.getWidth(), placeableMo7702measureBRTryo1.getHeight(), n05.e(new b36(AlignmentLineKt.getFirstBaseline(), Integer.valueOf(placeableMo7702measureBRTryo1.get(AlignmentLineKt.getFirstBaseline()))), new b36(AlignmentLineKt.getLastBaseline(), Integer.valueOf(placeableMo7702measureBRTryo1.get(AlignmentLineKt.getLastBaseline())))), new nl3() { // from class: androidx.compose.material3.f
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return BadgeKt$BadgedBox$1$1.measure_3p2s80s$lambda$2(placeableMo7702measureBRTryo0, measureScope, placeableMo7702measureBRTryo1, (Placeable.PlacementScope) obj);
                            }
                        });
                    }
                }
                throw hm.d("Collection contains no element matching the predicate.");
            }
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }
}
