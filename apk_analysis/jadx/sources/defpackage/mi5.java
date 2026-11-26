package defpackage;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.navigation.NavDestination;
import androidx.navigation.internal.NavControllerImpl;
import androidx.navigationevent.NavigationEventTransitionState;
import androidx.navigationevent.compose.NavigationEventHandlerKt;
import androidx.navigationevent.compose.NavigationEventState;
import androidx.transition.TransitionValues;
import yads.q96;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class mi5 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ mi5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(NavControllerImpl.executePopOperations$lambda$12((NavControllerImpl) obj2, (NavDestination) obj));
            case 1:
                return NavigationEventHandlerKt.NavigationEventHandler$lambda$11$lambda$10((NavigationEventState) obj2, (NavigationEventTransitionState) obj);
            case 2:
                return SuspendAnimationKt.animateDecay$lambda$0((bm3) obj2, (AnimationScope) obj);
            default:
                return q96.a((TransitionValues) obj2, (int[]) obj);
        }
    }
}
