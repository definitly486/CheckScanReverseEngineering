package defpackage;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.gestures.TrackpadScrollingLogic;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import yads.nq0;
import yads.ry2;
import yads.wr1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class og8 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ og8(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return SuspendAnimationKt.animate$lambda$3$0((AnimationState) obj);
            case 1:
                return TextFieldSelectionState.derivedVisibleContentBounds_delegate$lambda$0((TextFieldSelectionState) obj);
            case 2:
                return TrackpadScrollingLogic.sumOrNull$lambda$0((x81) obj);
            case 3:
                return nq0.e((nq0) obj);
            case 4:
                return ry2.a((ry2) obj);
            default:
                return Boolean.valueOf(wr1.a((wr1) obj));
        }
    }
}
