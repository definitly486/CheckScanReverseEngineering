package androidx.activity;

import androidx.lifecycle.LifecycleOwner;
import androidx.navigationevent.NavigationEventInfo;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
final class OnBackPressedCallbackInfo extends NavigationEventInfo {
    private final OnBackPressedCallback callback;
    private final LifecycleOwner owner;

    public OnBackPressedCallbackInfo(OnBackPressedCallback onBackPressedCallback, LifecycleOwner lifecycleOwner) {
        onBackPressedCallback.getClass();
        this.callback = onBackPressedCallback;
        this.owner = lifecycleOwner;
    }

    public static /* synthetic */ OnBackPressedCallbackInfo copy$default(OnBackPressedCallbackInfo onBackPressedCallbackInfo, OnBackPressedCallback onBackPressedCallback, LifecycleOwner lifecycleOwner, int i, Object obj) {
        if ((i & 1) != 0) {
            onBackPressedCallback = onBackPressedCallbackInfo.callback;
        }
        if ((i & 2) != 0) {
            lifecycleOwner = onBackPressedCallbackInfo.owner;
        }
        return onBackPressedCallbackInfo.copy(onBackPressedCallback, lifecycleOwner);
    }

    public final OnBackPressedCallback component1() {
        return this.callback;
    }

    public final LifecycleOwner component2() {
        return this.owner;
    }

    public final OnBackPressedCallbackInfo copy(OnBackPressedCallback onBackPressedCallback, LifecycleOwner lifecycleOwner) {
        onBackPressedCallback.getClass();
        return new OnBackPressedCallbackInfo(onBackPressedCallback, lifecycleOwner);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OnBackPressedCallbackInfo)) {
            return false;
        }
        OnBackPressedCallbackInfo onBackPressedCallbackInfo = (OnBackPressedCallbackInfo) obj;
        return aa4.e(this.callback, onBackPressedCallbackInfo.callback) && aa4.e(this.owner, onBackPressedCallbackInfo.owner);
    }

    public final OnBackPressedCallback getCallback() {
        return this.callback;
    }

    public final LifecycleOwner getOwner() {
        return this.owner;
    }

    public int hashCode() {
        int iHashCode = this.callback.hashCode() * 31;
        LifecycleOwner lifecycleOwner = this.owner;
        return iHashCode + (lifecycleOwner == null ? 0 : lifecycleOwner.hashCode());
    }

    public String toString() {
        return "OnBackPressedCallbackInfo(callback=" + this.callback + ", owner=" + this.owner + ')';
    }

    public /* synthetic */ OnBackPressedCallbackInfo(OnBackPressedCallback onBackPressedCallback, LifecycleOwner lifecycleOwner, int i, jh2 jh2Var) {
        this(onBackPressedCallback, (i & 2) != 0 ? null : lifecycleOwner);
    }
}
