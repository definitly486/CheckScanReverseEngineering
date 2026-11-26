package androidx.navigationevent;

import android.os.Build;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class OnBackInvokedInput extends NavigationEventInput {
    private boolean backInvokedCallbackRegistered;
    private final OnBackInvokedCallback onBackInvokedCallback;
    private final int onBackInvokedCallbackPriority;
    private final OnBackInvokedDispatcher onBackInvokedDispatcher;

    private OnBackInvokedInput(OnBackInvokedDispatcher onBackInvokedDispatcher, int i) {
        this.onBackInvokedDispatcher = onBackInvokedDispatcher;
        this.onBackInvokedCallbackPriority = i;
        this.onBackInvokedCallback = Build.VERSION.SDK_INT == 33 ? new OnBackInvokedCallback() { // from class: tv5
            public final void onBackInvoked() {
                this.a.dispatchOnBackCompleted();
            }
        } : createOnBackAnimationCallback();
    }

    private final OnBackInvokedCallback createOnBackAnimationCallback() {
        return new OnBackAnimationCallback() { // from class: androidx.navigationevent.OnBackInvokedInput.createOnBackAnimationCallback.1
            public void onBackCancelled() {
                OnBackInvokedInput.this.dispatchOnBackCancelled();
            }

            public void onBackInvoked() {
                OnBackInvokedInput.this.dispatchOnBackCompleted();
            }

            public void onBackProgressed(BackEvent backEvent) {
                backEvent.getClass();
                OnBackInvokedInput.this.dispatchOnBackProgressed(NavigationEvent_androidKt.NavigationEvent(backEvent));
            }

            public void onBackStarted(BackEvent backEvent) {
                backEvent.getClass();
                OnBackInvokedInput.this.dispatchOnBackStarted(NavigationEvent_androidKt.NavigationEvent(backEvent));
            }
        };
    }

    private final void updateBackInvokedCallbackState(boolean z) {
        if (z && !this.backInvokedCallbackRegistered) {
            this.onBackInvokedDispatcher.registerOnBackInvokedCallback(this.onBackInvokedCallbackPriority, this.onBackInvokedCallback);
            this.backInvokedCallbackRegistered = true;
        } else {
            if (z || !this.backInvokedCallbackRegistered) {
                return;
            }
            this.onBackInvokedDispatcher.unregisterOnBackInvokedCallback(this.onBackInvokedCallback);
            this.backInvokedCallbackRegistered = false;
        }
    }

    @Override // androidx.navigationevent.NavigationEventInput
    public void onHasEnabledHandlersChanged(boolean z) {
        updateBackInvokedCallbackState(z);
    }

    @Override // androidx.navigationevent.NavigationEventInput
    public void onRemoved() {
        updateBackInvokedCallbackState(false);
    }

    public /* synthetic */ OnBackInvokedInput(OnBackInvokedDispatcher onBackInvokedDispatcher, int i, jh2 jh2Var) {
        this(onBackInvokedDispatcher, i);
    }
}
