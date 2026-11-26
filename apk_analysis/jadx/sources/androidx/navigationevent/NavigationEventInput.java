package androidx.navigationevent;

import defpackage.ah;

/* JADX INFO: loaded from: classes3.dex */
public abstract class NavigationEventInput {
    private NavigationEventDispatcher dispatcher;
    private boolean isPredictiveBackInProgress;
    private boolean isPredictiveForwardInProgress;

    public final void dispatchOnBackCancelled() {
        NavigationEventDispatcher navigationEventDispatcher = this.dispatcher;
        if (navigationEventDispatcher == null) {
            ah.f("This input is not added to any dispatcher.");
            return;
        }
        if (!this.isPredictiveBackInProgress) {
            navigationEventDispatcher.dispatchOnStarted$navigationevent(this, -1, null);
        }
        navigationEventDispatcher.dispatchOnCancelled$navigationevent(this, -1);
        this.isPredictiveBackInProgress = false;
    }

    public final void dispatchOnBackCompleted() {
        NavigationEventDispatcher navigationEventDispatcher = this.dispatcher;
        if (navigationEventDispatcher == null) {
            ah.f("This input is not added to any dispatcher.");
            return;
        }
        if (!this.isPredictiveBackInProgress) {
            navigationEventDispatcher.dispatchOnStarted$navigationevent(this, -1, null);
        }
        navigationEventDispatcher.dispatchOnCompleted$navigationevent(this, -1);
        this.isPredictiveBackInProgress = false;
    }

    public final void dispatchOnBackProgressed(NavigationEvent navigationEvent) {
        navigationEvent.getClass();
        NavigationEventDispatcher navigationEventDispatcher = this.dispatcher;
        if (navigationEventDispatcher == null) {
            ah.f("This input is not added to any dispatcher.");
        } else if (this.isPredictiveBackInProgress) {
            navigationEventDispatcher.dispatchOnProgressed$navigationevent(this, -1, navigationEvent);
        }
    }

    public final void dispatchOnBackStarted(NavigationEvent navigationEvent) {
        navigationEvent.getClass();
        NavigationEventDispatcher navigationEventDispatcher = this.dispatcher;
        if (navigationEventDispatcher == null) {
            ah.f("This input is not added to any dispatcher.");
        } else {
            if (this.isPredictiveBackInProgress) {
                return;
            }
            navigationEventDispatcher.dispatchOnStarted$navigationevent(this, -1, navigationEvent);
            this.isPredictiveBackInProgress = true;
        }
    }

    public final void dispatchOnForwardCancelled() {
        NavigationEventDispatcher navigationEventDispatcher = this.dispatcher;
        if (navigationEventDispatcher == null) {
            ah.f("This input is not added to any dispatcher.");
            return;
        }
        if (!this.isPredictiveForwardInProgress) {
            navigationEventDispatcher.dispatchOnStarted$navigationevent(this, 1, null);
        }
        navigationEventDispatcher.dispatchOnCancelled$navigationevent(this, 1);
        this.isPredictiveForwardInProgress = false;
    }

    public final void dispatchOnForwardCompleted() {
        NavigationEventDispatcher navigationEventDispatcher = this.dispatcher;
        if (navigationEventDispatcher == null) {
            ah.f("This input is not added to any dispatcher.");
            return;
        }
        if (!this.isPredictiveForwardInProgress) {
            navigationEventDispatcher.dispatchOnStarted$navigationevent(this, 1, null);
        }
        navigationEventDispatcher.dispatchOnCompleted$navigationevent(this, 1);
        this.isPredictiveForwardInProgress = false;
    }

    public final void dispatchOnForwardProgressed(NavigationEvent navigationEvent) {
        navigationEvent.getClass();
        NavigationEventDispatcher navigationEventDispatcher = this.dispatcher;
        if (navigationEventDispatcher == null) {
            ah.f("This input is not added to any dispatcher.");
        } else if (this.isPredictiveForwardInProgress) {
            navigationEventDispatcher.dispatchOnProgressed$navigationevent(this, 1, navigationEvent);
        }
    }

    public final void dispatchOnForwardStarted(NavigationEvent navigationEvent) {
        navigationEvent.getClass();
        NavigationEventDispatcher navigationEventDispatcher = this.dispatcher;
        if (navigationEventDispatcher == null) {
            ah.f("This input is not added to any dispatcher.");
        } else {
            if (this.isPredictiveForwardInProgress) {
                return;
            }
            navigationEventDispatcher.dispatchOnStarted$navigationevent(this, 1, navigationEvent);
            this.isPredictiveForwardInProgress = true;
        }
    }

    public final void doOnAdded$navigationevent(NavigationEventDispatcher navigationEventDispatcher) {
        navigationEventDispatcher.getClass();
        onAdded(navigationEventDispatcher);
    }

    public final void doOnHasEnabledHandlersChanged$navigationevent(boolean z) {
        onHasEnabledHandlersChanged(z);
    }

    public final void doOnHistoryChanged$navigationevent(NavigationEventHistory navigationEventHistory) {
        navigationEventHistory.getClass();
        onHistoryChanged(navigationEventHistory);
    }

    public final void doOnRemoved$navigationevent() {
        onRemoved();
    }

    public final NavigationEventDispatcher getDispatcher$navigationevent() {
        return this.dispatcher;
    }

    public void onAdded(NavigationEventDispatcher navigationEventDispatcher) {
        navigationEventDispatcher.getClass();
    }

    public void onHasEnabledHandlersChanged(boolean z) {
    }

    public void onHistoryChanged(NavigationEventHistory navigationEventHistory) {
        navigationEventHistory.getClass();
    }

    public void onRemoved() {
    }

    public final void setDispatcher$navigationevent(NavigationEventDispatcher navigationEventDispatcher) {
        this.dispatcher = navigationEventDispatcher;
    }
}
