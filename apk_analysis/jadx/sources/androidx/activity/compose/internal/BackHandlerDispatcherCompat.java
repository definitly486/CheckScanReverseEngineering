package androidx.activity.compose.internal;

import androidx.activity.OnBackPressedDispatcher;
import androidx.navigationevent.NavigationEventDispatcher;
import defpackage.ah;
import defpackage.fg;

/* JADX INFO: loaded from: classes.dex */
public final class BackHandlerDispatcherCompat {
    public static final int $stable = 8;
    private final NavigationEventDispatcher navigationEventDispatcher;
    private final OnBackPressedDispatcher onBackPressedDispatcher;

    public BackHandlerDispatcherCompat(NavigationEventDispatcher navigationEventDispatcher, OnBackPressedDispatcher onBackPressedDispatcher) {
        this.navigationEventDispatcher = navigationEventDispatcher;
        this.onBackPressedDispatcher = onBackPressedDispatcher;
        if ((navigationEventDispatcher == null ? onBackPressedDispatcher : navigationEventDispatcher) != null) {
            return;
        }
        fg.c("At least one dispatcher (NavigationEventDispatcher or OnBackPressedDispatcher) must be non-null.");
        throw null;
    }

    public final void addHandler(BackHandlerCompat backHandlerCompat) {
        NavigationEventDispatcher navigationEventDispatcher = this.navigationEventDispatcher;
        if (navigationEventDispatcher != null) {
            NavigationEventDispatcher.addHandler$default(navigationEventDispatcher, backHandlerCompat.getNavigationEventHandler(), 0, 2, null);
            return;
        }
        OnBackPressedDispatcher onBackPressedDispatcher = this.onBackPressedDispatcher;
        if (onBackPressedDispatcher != null) {
            onBackPressedDispatcher.addCallback(backHandlerCompat.getOnBackPressedCallback());
        } else {
            ah.f("Unreachable");
        }
    }

    public final void removeHandler(BackHandlerCompat backHandlerCompat) {
        if (this.navigationEventDispatcher != null) {
            backHandlerCompat.getNavigationEventHandler().remove();
        } else if (this.onBackPressedDispatcher != null) {
            backHandlerCompat.getOnBackPressedCallback().remove();
        } else {
            ah.f("Unreachable");
        }
    }
}
