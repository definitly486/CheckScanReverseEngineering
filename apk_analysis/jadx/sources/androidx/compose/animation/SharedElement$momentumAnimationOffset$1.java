package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import defpackage.av0;
import defpackage.gh4;
import defpackage.ll3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SharedElement$momentumAnimationOffset$1 extends gh4 implements ll3<Offset> {
    final /* synthetic */ SharedElement this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedElement$momentumAnimationOffset$1(SharedElement sharedElement) {
        super(0);
        this.this$0 = sharedElement;
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ Offset invoke() {
        return Offset.m5976boximpl(m1148invokeF1C5BW0());
    }

    /* JADX INFO: renamed from: invoke-F1C5BW0, reason: not valid java name */
    public final long m1148invokeF1C5BW0() {
        SharedElementEntry sharedElementEntry;
        if (!this.this$0.animationSpecFinalized && this.this$0.getScope().isTransitionActive() && this.this$0.momentumAnimation.isRunning()) {
            List<SharedElementEntry> enabledEntries = this.this$0.getEnabledEntries();
            int size = enabledEntries.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    sharedElementEntry = null;
                    break;
                }
                sharedElementEntry = enabledEntries.get(i);
                if (sharedElementEntry.getTarget()) {
                    break;
                }
                i++;
            }
            SharedElementEntry sharedElementEntry2 = sharedElementEntry;
            if (sharedElementEntry2 != null) {
                SharedElement sharedElement = this.this$0;
                FiniteAnimationSpec<Rect> animationSpec = sharedElementEntry2.getBoundsAnimation().getAnimationSpec();
                if (animationSpec instanceof SpringSpec) {
                    SpringSpec springSpec = (SpringSpec) animationSpec;
                    av0.c(sharedElement.getScope().getCoroutineScope(), null, null, new SharedElement$momentumAnimationOffset$1$2$1(sharedElement, AnimationSpecKt.spring(springSpec.getDampingRatio(), springSpec.getStiffness(), Offset.m5976boximpl(VisibilityThresholdsKt.getVisibilityThreshold(Offset.Companion))), null), 3);
                }
                sharedElement.animationSpecFinalized = true;
            }
        }
        return ((Offset) this.this$0.momentumAnimation.getValue()).m5997unboximpl();
    }
}
