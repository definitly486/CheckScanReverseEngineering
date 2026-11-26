package androidx.navigationevent.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import defpackage.ar2;

/* JADX INFO: loaded from: classes.dex */
public final class LocalNavigationEventDispatcherOwner {
    public static final int $stable = 0;
    public static final LocalNavigationEventDispatcherOwner INSTANCE = new LocalNavigationEventDispatcherOwner();
    private static final ProvidableCompositionLocal<NavigationEventDispatcherOwner> LocalNavigationEventDispatcherOwner = CompositionLocalKt.compositionLocalOf$default(null, new ar2(1), 1, null);

    private LocalNavigationEventDispatcherOwner() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NavigationEventDispatcherOwner LocalNavigationEventDispatcherOwner$lambda$0() {
        return null;
    }

    public final NavigationEventDispatcherOwner getCurrent(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-942026292, i, -1, "androidx.navigationevent.compose.LocalNavigationEventDispatcherOwner.<get-current> (LocalNavigationEventDispatcherOwner.kt:38)");
        }
        NavigationEventDispatcherOwner navigationEventDispatcherOwnerFindViewTreeNavigationEventDispatcherOwner = (NavigationEventDispatcherOwner) composer.consume(LocalNavigationEventDispatcherOwner);
        if (navigationEventDispatcherOwnerFindViewTreeNavigationEventDispatcherOwner == null) {
            composer.startReplaceGroup(950836184);
            navigationEventDispatcherOwnerFindViewTreeNavigationEventDispatcherOwner = LocalNavigationEventDispatcherOwner_androidKt.findViewTreeNavigationEventDispatcherOwner(composer, 0);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(950834231);
            composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return navigationEventDispatcherOwnerFindViewTreeNavigationEventDispatcherOwner;
    }

    public final ProvidedValue<NavigationEventDispatcherOwner> provides(NavigationEventDispatcherOwner navigationEventDispatcherOwner) {
        return LocalNavigationEventDispatcherOwner.provides(navigationEventDispatcherOwner);
    }
}
