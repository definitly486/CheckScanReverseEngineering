package defpackage;

import androidx.camera.core.CameraX;
import androidx.camera.lifecycle.LifecycleCameraProviderImpl;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.ContextualFlowColumnOverflow;
import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i31 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ i31(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return CanvasKt.Canvas$lambda$1$0((String) obj2, (SemanticsPropertyReceiver) obj);
            case 1:
                return ContextualFlowColumnOverflow.Companion.expandOrCollapseIndicator__jt2gSs$lambda$1$1((dm3) obj2, (FlowLayoutOverflowState) obj);
            case 2:
                return LifecycleCameraProviderImpl.initAsync$lambda$0$1((CameraX) obj2, (Void) obj);
            default:
                return TransitionKt.updateTransition$lambda$1$0((Transition) obj2, (DisposableEffectScope) obj);
        }
    }
}
