package androidx.compose.ui.node;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1 extends gh4 implements nl3<PlaceableResult, j59> {
    public static final LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1 INSTANCE = new LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1();

    public LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1() {
        super(1);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(PlaceableResult placeableResult) {
        if (placeableResult.isValidOwnerScope()) {
            placeableResult.getPlaceable().captureRulersIfNeeded(placeableResult);
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(PlaceableResult placeableResult) {
        invoke2(placeableResult);
        return j59.a;
    }
}
