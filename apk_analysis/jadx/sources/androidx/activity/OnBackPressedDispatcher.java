package androidx.activity;

import android.window.OnBackInvokedDispatcher;
import androidx.core.util.Consumer;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventInput;
import androidx.navigationevent.OnBackCompletedFallback;
import androidx.navigationevent.OnBackInvokedDefaultInput;
import androidx.navigationevent.OnBackInvokedOverlayInput;
import defpackage.cl4;
import defpackage.e84;
import defpackage.fh8;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class OnBackPressedDispatcher {
    private final cl4 eventInput$delegate;
    private final Runnable fallbackOnBackPressed;
    private boolean hasEnabledCallbacks;
    private final Consumer<Boolean> onHasEnabledCallbacksChanged;

    public final class OnBackPressedEventInput extends NavigationEventInput {
        private final NavigationEventDispatcher dispatcher;

        public OnBackPressedEventInput() {
            NavigationEventDispatcher navigationEventDispatcher = new NavigationEventDispatcher(new OnBackCompletedFallback() { // from class: androidx.activity.b
                @Override // androidx.navigationevent.OnBackCompletedFallback
                public final void onBackCompletedFallback() {
                    OnBackPressedDispatcher.OnBackPressedEventInput.dispatcher$lambda$0(onBackPressedDispatcher);
                }
            });
            navigationEventDispatcher.addInput(this);
            this.dispatcher = navigationEventDispatcher;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void dispatcher$lambda$0(OnBackPressedDispatcher onBackPressedDispatcher) {
            Runnable runnable = onBackPressedDispatcher.fallbackOnBackPressed;
            if (runnable != null) {
                runnable.run();
            }
        }

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

        public final NavigationEventDispatcher getDispatcher() {
            return this.dispatcher;
        }

        @Override // androidx.navigationevent.NavigationEventInput
        public void onHasEnabledHandlersChanged(boolean z) {
            OnBackPressedDispatcher.this.hasEnabledCallbacks = z;
            Consumer consumer = OnBackPressedDispatcher.this.onHasEnabledCallbacksChanged;
            if (consumer != null) {
                consumer.accept(Boolean.valueOf(z));
            }
        }
    }

    public OnBackPressedDispatcher(Runnable runnable, Consumer<Boolean> consumer) {
        this.fallbackOnBackPressed = runnable;
        this.onHasEnabledCallbacksChanged = consumer;
        this.eventInput$delegate = new fh8(new e84(this, 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OnBackPressedEventInput eventInput_delegate$lambda$0(OnBackPressedDispatcher onBackPressedDispatcher) {
        return onBackPressedDispatcher.new OnBackPressedEventInput();
    }

    private final OnBackPressedEventInput getEventInput() {
        return (OnBackPressedEventInput) this.eventInput$delegate.getValue();
    }

    public final void addCallback(LifecycleOwner lifecycleOwner, OnBackPressedCallback onBackPressedCallback) {
        lifecycleOwner.getClass();
        onBackPressedCallback.getClass();
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
            return;
        }
        OnBackPressedCallback.OnBackPressedEventHandler onBackPressedEventHandlerCreateNavigationEventHandler$activity = onBackPressedCallback.createNavigationEventHandler$activity(new OnBackPressedCallbackInfo(onBackPressedCallback, lifecycleOwner));
        if (ActivityFlags.isOnBackPressedLifecycleOrderMaintained) {
            onBackPressedEventHandlerCreateNavigationEventHandler$activity.setLifecycleActive(false);
            NavigationEventDispatcher.addHandler$default(getEventDispatcher$activity(), onBackPressedEventHandlerCreateNavigationEventHandler$activity, 0, 2, null);
        }
        OnBackPressedDispatcher$addCallback$lifecycleObserver$1 onBackPressedDispatcher$addCallback$lifecycleObserver$1 = new OnBackPressedDispatcher$addCallback$lifecycleObserver$1(onBackPressedEventHandlerCreateNavigationEventHandler$activity, this, lifecycle);
        lifecycle.addObserver(onBackPressedDispatcher$addCallback$lifecycleObserver$1);
        onBackPressedCallback.addCloseable$activity(onBackPressedDispatcher$addCallback$lifecycleObserver$1);
    }

    public final void dispatchOnBackCancelled() {
        getEventInput().backCancelled();
    }

    public final void dispatchOnBackProgressed(BackEventCompat backEventCompat) {
        backEventCompat.getClass();
        getEventInput().backProgressed(backEventCompat.toNavigationEvent());
    }

    public final void dispatchOnBackStarted(BackEventCompat backEventCompat) {
        backEventCompat.getClass();
        getEventInput().backStarted(backEventCompat.toNavigationEvent());
    }

    public final NavigationEventDispatcher getEventDispatcher$activity() {
        return getEventInput().getDispatcher();
    }

    public final boolean hasEnabledCallbacks() {
        return this.hasEnabledCallbacks;
    }

    public final void onBackPressed() {
        getEventInput().backCompleted();
    }

    public final void setOnBackInvokedDispatcher(OnBackInvokedDispatcher onBackInvokedDispatcher) {
        onBackInvokedDispatcher.getClass();
        getEventDispatcher$activity().addInput(new OnBackInvokedDefaultInput(onBackInvokedDispatcher), 1);
        getEventDispatcher$activity().addInput(new OnBackInvokedOverlayInput(onBackInvokedDispatcher), 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OnBackPressedDispatcher() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this(runnable, null);
    }

    public /* synthetic */ OnBackPressedDispatcher(Runnable runnable, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : runnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void addCallback(OnBackPressedCallback onBackPressedCallback) {
        onBackPressedCallback.getClass();
        NavigationEventDispatcher.addHandler$default(getEventDispatcher$activity(), onBackPressedCallback.createNavigationEventHandler$activity(new OnBackPressedCallbackInfo(onBackPressedCallback, null, 2, 0 == true ? 1 : 0)), 0, 2, null);
    }
}
