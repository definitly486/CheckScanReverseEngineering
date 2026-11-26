package androidx.compose.ui.layout;

import defpackage.bm3;
import defpackage.gh4;

/* JADX INFO: loaded from: classes2.dex */
public final class HorizontalRuler$Companion$minOf$1 extends gh4 implements bm3<Placeable.PlacementScope, Float, Float> {
    final /* synthetic */ HorizontalRuler[] $rulers;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HorizontalRuler$Companion$minOf$1(HorizontalRuler[] horizontalRulerArr) {
        super(2);
        this.$rulers = horizontalRulerArr;
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Float invoke(Placeable.PlacementScope placementScope, Float f) {
        return invoke(placementScope, f.floatValue());
    }

    public final Float invoke(Placeable.PlacementScope placementScope, float f) {
        return Float.valueOf(RulerKt.mergeRulerValues(placementScope, false, this.$rulers, f));
    }
}
