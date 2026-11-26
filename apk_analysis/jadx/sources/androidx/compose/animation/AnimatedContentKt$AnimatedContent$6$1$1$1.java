package androidx.compose.animation;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.dm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class AnimatedContentKt$AnimatedContent$6$1$1$1 extends gh4 implements dm3<MeasureScope, Measurable, Constraints, MeasureResult> {
    final /* synthetic */ ContentTransform $specOnEnter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedContentKt$AnimatedContent$6$1$1$1(ContentTransform contentTransform) {
        super(3);
        this.$specOnEnter = contentTransform;
    }

    @Override // defpackage.dm3
    public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        return m1043invoke3p2s80s(measureScope, measurable, constraints.m9001unboximpl());
    }

    /* JADX INFO: renamed from: invoke-3p2s80s, reason: not valid java name */
    public final MeasureResult m1043invoke3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new AnonymousClass1(placeableMo7702measureBRTryo0, this.$specOnEnter), 4, null);
    }

    /* JADX INFO: renamed from: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$1$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
        final /* synthetic */ Placeable $placeable;
        final /* synthetic */ ContentTransform $specOnEnter;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Placeable placeable, ContentTransform contentTransform) {
            super(1);
            this.$placeable = placeable;
            this.$specOnEnter = contentTransform;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Placeable.PlacementScope placementScope) {
            placementScope.place(this.$placeable, 0, 0, this.$specOnEnter.getTargetContentZIndex());
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
            invoke2(placementScope);
            return j59.a;
        }
    }
}
