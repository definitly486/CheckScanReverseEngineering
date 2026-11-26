package androidx.navigationevent.compose;

import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.navigationevent.ViewTreeNavigationEventDispatcherOwner;

/* JADX INFO: loaded from: classes.dex */
public final class LocalNavigationEventDispatcherOwner_androidKt {
    public static final NavigationEventDispatcherOwner findViewTreeNavigationEventDispatcherOwner(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-334864187, i, -1, "androidx.navigationevent.compose.findViewTreeNavigationEventDispatcherOwner (LocalNavigationEventDispatcherOwner.android.kt:25)");
        }
        NavigationEventDispatcherOwner navigationEventDispatcherOwner = ViewTreeNavigationEventDispatcherOwner.get((View) composer.consume(AndroidCompositionLocals_androidKt.getLocalView()));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return navigationEventDispatcherOwner;
    }
}
