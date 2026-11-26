package androidx.navigationevent;

/* JADX INFO: loaded from: classes3.dex */
public final class DirectNavigationEventInput extends NavigationEventInput {
    public final void backCancelled() {
        dispatchOnBackCancelled();
    }

    public final void backCompleted() {
        dispatchOnBackCompleted();
    }

    public final void backProgressed(NavigationEvent navigationEvent) {
        navigationEvent.getClass();
        dispatchOnBackProgressed(navigationEvent);
    }

    public final void backStarted(NavigationEvent navigationEvent) {
        navigationEvent.getClass();
        dispatchOnBackStarted(navigationEvent);
    }

    public final void forwardCancelled() {
        dispatchOnForwardCancelled();
    }

    public final void forwardCompleted() {
        dispatchOnForwardCompleted();
    }

    public final void forwardProgressed(NavigationEvent navigationEvent) {
        navigationEvent.getClass();
        dispatchOnForwardProgressed(navigationEvent);
    }

    public final void forwardStarted(NavigationEvent navigationEvent) {
        navigationEvent.getClass();
        dispatchOnForwardStarted(navigationEvent);
    }
}
