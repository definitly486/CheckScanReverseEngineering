package androidx.compose.ui.node;

import androidx.compose.ui.layout.RulerScope;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class LookaheadCapablePlaceable$captureRulers$1 extends gh4 implements ll3<j59> {
    final /* synthetic */ PlaceableResult $placeableResult;
    final /* synthetic */ long $positionOnScreen;
    final /* synthetic */ long $size;
    final /* synthetic */ LookaheadCapablePlaceable this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LookaheadCapablePlaceable$captureRulers$1(LookaheadCapablePlaceable lookaheadCapablePlaceable, long j, long j2, PlaceableResult placeableResult) {
        super(0);
        this.this$0 = lookaheadCapablePlaceable;
        this.$positionOnScreen = j;
        this.$size = j2;
        this.$placeableResult = placeableResult;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.getRulerScope().setCoordinatesAccessed(false);
        this.this$0.getRulerScope().m7950setPositionOnScreengyyYBs(this.$positionOnScreen);
        this.this$0.getRulerScope().m7951setSizeozmzZPI(this.$size);
        nl3<RulerScope, j59> rulers = this.$placeableResult.getResult().getRulers();
        if (rulers != null) {
            rulers.invoke(this.this$0.getRulerScope());
        }
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
