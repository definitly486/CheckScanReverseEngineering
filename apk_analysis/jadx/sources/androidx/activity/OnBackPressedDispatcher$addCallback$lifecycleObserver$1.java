package androidx.activity;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigationevent.NavigationEventDispatcher;

/* JADX INFO: loaded from: classes.dex */
public final class OnBackPressedDispatcher$addCallback$lifecycleObserver$1 implements LifecycleEventObserver, AutoCloseable {
    final /* synthetic */ OnBackPressedCallback.OnBackPressedEventHandler $eventHandler;
    final /* synthetic */ Lifecycle $lifecycle;
    final /* synthetic */ OnBackPressedDispatcher this$0;

    public OnBackPressedDispatcher$addCallback$lifecycleObserver$1(OnBackPressedCallback.OnBackPressedEventHandler onBackPressedEventHandler, OnBackPressedDispatcher onBackPressedDispatcher, Lifecycle lifecycle) {
        this.$eventHandler = onBackPressedEventHandler;
        this.this$0 = onBackPressedDispatcher;
        this.$lifecycle = lifecycle;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.$lifecycle.removeObserver(this);
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        lifecycleOwner.getClass();
        event.getClass();
        if (ActivityFlags.isOnBackPressedLifecycleOrderMaintained) {
            if (event == Lifecycle.Event.ON_START) {
                this.$eventHandler.setLifecycleActive(true);
            } else if (event == Lifecycle.Event.ON_STOP) {
                this.$eventHandler.setLifecycleActive(false);
            }
        } else if (event == Lifecycle.Event.ON_START) {
            NavigationEventDispatcher.addHandler$default(this.this$0.getEventDispatcher$activity(), this.$eventHandler, 0, 2, null);
        } else if (event == Lifecycle.Event.ON_STOP) {
            this.$eventHandler.remove();
        }
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.$eventHandler.remove();
            this.$lifecycle.removeObserver(this);
        }
    }
}
