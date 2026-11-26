package androidx.navigationevent;

import defpackage.ah;
import defpackage.c9;
import defpackage.fr;
import defpackage.jh;
import defpackage.jh2;
import defpackage.nn1;
import defpackage.qn1;
import defpackage.y68;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class NavigationEventDispatcher {
    public static final Companion Companion = new Companion(null);
    public static final int PRIORITY_DEFAULT = 1;
    public static final int PRIORITY_OVERLAY = 0;
    private final Set<NavigationEventDispatcher> childDispatchers;
    private final Set<NavigationEventHandler<?>> handlers;
    private final Set<NavigationEventInput> inputs;
    private boolean isDisposed;
    private boolean isEnabled;
    private final OnBackCompletedFallback onBackCompletedFallback;
    private NavigationEventDispatcher parent;
    private final NavigationEventProcessor sharedProcessor;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Priority {
    }

    private NavigationEventDispatcher(NavigationEventDispatcher navigationEventDispatcher, OnBackCompletedFallback onBackCompletedFallback) {
        NavigationEventProcessor navigationEventProcessor;
        this.parent = navigationEventDispatcher;
        this.onBackCompletedFallback = onBackCompletedFallback;
        this.isEnabled = true;
        this.sharedProcessor = (navigationEventDispatcher == null || (navigationEventProcessor = navigationEventDispatcher.sharedProcessor) == null) ? new NavigationEventProcessor() : navigationEventProcessor;
        this.childDispatchers = new LinkedHashSet();
        this.handlers = new LinkedHashSet();
        this.inputs = new LinkedHashSet();
        NavigationEventDispatcher navigationEventDispatcher2 = this.parent;
        if (navigationEventDispatcher2 != null) {
            navigationEventDispatcher2.childDispatchers.add(this);
        }
    }

    public static /* synthetic */ void addHandler$default(NavigationEventDispatcher navigationEventDispatcher, NavigationEventHandler navigationEventHandler, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 1;
        }
        navigationEventDispatcher.addHandler(navigationEventHandler, i);
    }

    private final void checkInvariants() {
        if (isDisposed()) {
            ah.f("This NavigationEventDispatcher has already been disposed and cannot be used.");
        }
    }

    private final boolean isDisposed() {
        NavigationEventDispatcher navigationEventDispatcher = this.parent;
        if (navigationEventDispatcher == null || !navigationEventDispatcher.isDisposed()) {
            return this.isDisposed;
        }
        return true;
    }

    public final void addHandler(NavigationEventHandler<?> navigationEventHandler, int i) {
        navigationEventHandler.getClass();
        checkInvariants();
        if (this.handlers.add(navigationEventHandler)) {
            this.sharedProcessor.addHandler(this, navigationEventHandler, i);
        }
    }

    public final void addInput(NavigationEventInput navigationEventInput, int i) {
        navigationEventInput.getClass();
        checkInvariants();
        if (i != 1 && i != 0) {
            c9.f(jh.b(i, "Unsupported priority value: "));
        } else if (this.inputs.add(navigationEventInput)) {
            this.sharedProcessor.addInput(this, navigationEventInput, i);
        }
    }

    public final void dispatchOnCancelled$navigationevent(NavigationEventInput navigationEventInput, int i) {
        navigationEventInput.getClass();
        checkInvariants();
        if (isEnabled()) {
            this.sharedProcessor.dispatchOnCancelled(navigationEventInput, i);
        }
    }

    public final void dispatchOnCompleted$navigationevent(NavigationEventInput navigationEventInput, int i) {
        navigationEventInput.getClass();
        checkInvariants();
        if (isEnabled()) {
            this.sharedProcessor.dispatchOnCompleted(navigationEventInput, i, this.onBackCompletedFallback);
        }
    }

    public final void dispatchOnProgressed$navigationevent(NavigationEventInput navigationEventInput, int i, NavigationEvent navigationEvent) {
        navigationEventInput.getClass();
        navigationEvent.getClass();
        checkInvariants();
        if (isEnabled()) {
            this.sharedProcessor.dispatchOnProgressed(navigationEventInput, i, navigationEvent);
        }
    }

    public final void dispatchOnStarted$navigationevent(NavigationEventInput navigationEventInput, int i, NavigationEvent navigationEvent) {
        navigationEventInput.getClass();
        checkInvariants();
        if (isEnabled()) {
            this.sharedProcessor.dispatchOnStarted(navigationEventInput, i, navigationEvent);
        }
    }

    public final void dispose() {
        Set<NavigationEventDispatcher> set;
        checkInvariants();
        this.isDisposed = true;
        fr frVar = new fr();
        frVar.addLast(this);
        while (!frVar.isEmpty()) {
            NavigationEventDispatcher navigationEventDispatcher = (NavigationEventDispatcher) frVar.removeFirst();
            navigationEventDispatcher.isDisposed = true;
            nn1.s(navigationEventDispatcher.childDispatchers, frVar);
            Iterator it = qn1.t0(navigationEventDispatcher.inputs).iterator();
            while (it.hasNext()) {
                this.sharedProcessor.removeInput((NavigationEventInput) it.next());
            }
            navigationEventDispatcher.inputs.clear();
            Iterator it2 = qn1.t0(navigationEventDispatcher.handlers).iterator();
            while (it2.hasNext()) {
                ((NavigationEventHandler) it2.next()).remove();
            }
            navigationEventDispatcher.handlers.clear();
            navigationEventDispatcher.childDispatchers.clear();
            NavigationEventDispatcher navigationEventDispatcher2 = navigationEventDispatcher.parent;
            if (navigationEventDispatcher2 != null && (set = navigationEventDispatcher2.childDispatchers) != null) {
                set.remove(navigationEventDispatcher);
            }
            navigationEventDispatcher.parent = null;
        }
    }

    public final Set<NavigationEventDispatcher> getChildDispatchers$navigationevent() {
        return this.childDispatchers;
    }

    public final y68<NavigationEventHistory> getHistory() {
        return this.sharedProcessor.getHistory();
    }

    public final NavigationEventProcessor getSharedProcessor$navigationevent() {
        return this.sharedProcessor;
    }

    public final y68<NavigationEventTransitionState> getTransitionState() {
        return this.sharedProcessor.getTransitionState();
    }

    public final boolean isEnabled() {
        NavigationEventDispatcher navigationEventDispatcher = this.parent;
        if (navigationEventDispatcher == null || navigationEventDispatcher.isEnabled()) {
            return this.isEnabled;
        }
        return false;
    }

    public final void removeHandler$navigationevent(NavigationEventHandler<?> navigationEventHandler) {
        navigationEventHandler.getClass();
        if (this.handlers.remove(navigationEventHandler)) {
            this.sharedProcessor.removeHandler(navigationEventHandler);
        }
    }

    public final void removeInput(NavigationEventInput navigationEventInput) {
        navigationEventInput.getClass();
        checkInvariants();
        if (this.inputs.remove(navigationEventInput)) {
            this.sharedProcessor.removeInput(navigationEventInput);
        }
    }

    public final void setEnabled(boolean z) {
        checkInvariants();
        if (this.isEnabled == z) {
            return;
        }
        this.isEnabled = z;
        this.sharedProcessor.refreshEnabledHandlers();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public final void addHandler(NavigationEventHandler<?> navigationEventHandler) {
        navigationEventHandler.getClass();
        addHandler$default(this, navigationEventHandler, 0, 2, null);
    }

    public final void addInput(NavigationEventInput navigationEventInput) {
        navigationEventInput.getClass();
        checkInvariants();
        if (this.inputs.add(navigationEventInput)) {
            this.sharedProcessor.addInput(this, navigationEventInput, -1);
        }
    }

    public NavigationEventDispatcher() {
        this(null, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavigationEventDispatcher(OnBackCompletedFallback onBackCompletedFallback) {
        this(null, onBackCompletedFallback);
        onBackCompletedFallback.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavigationEventDispatcher(NavigationEventDispatcher navigationEventDispatcher) {
        this(navigationEventDispatcher, null);
        navigationEventDispatcher.getClass();
    }
}
