package androidx.transition;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class b implements Transition.TransitionNotification {
    @Override // androidx.transition.Transition.TransitionNotification
    public final void notifyListener(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
        transitionListener.onTransitionStart(transition, z);
    }
}
