package androidx.navigationevent.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import defpackage.ah;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.m43;
import defpackage.nl3;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
public final class RememberNavigationEventDispatcherOwnerKt {
    public static final NavigationEventDispatcherOwner rememberNavigationEventDispatcherOwner(boolean z, NavigationEventDispatcherOwner navigationEventDispatcherOwner, Composer composer, int i, int i2) {
        int i3 = 1;
        if ((i2 & 1) != 0) {
            z = true;
        }
        if ((i2 & 2) != 0 && (navigationEventDispatcherOwner = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composer, 6)) == null) {
            ah.f("No NavigationEventDispatcherOwner provided in LocalNavigationEventDispatcherOwner. If you intended to create a root dispatcher, explicitly pass null as the parent.");
            return null;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-336636597, i, -1, "androidx.navigationevent.compose.rememberNavigationEventDispatcherOwner (RememberNavigationEventDispatcherOwner.kt:65)");
        }
        boolean zChanged = composer.changed(navigationEventDispatcherOwner);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = navigationEventDispatcherOwner != null ? new NavigationEventDispatcher(navigationEventDispatcherOwner.getNavigationEventDispatcher()) : new NavigationEventDispatcher();
            composer.updateRememberedValue(objRememberedValue);
        }
        NavigationEventDispatcher navigationEventDispatcher = (NavigationEventDispatcher) objRememberedValue;
        Boolean boolValueOf = Boolean.valueOf(z);
        int i4 = i & 14;
        boolean zChangedInstance = (((i4 ^ 6) > 4 && composer.changed(z)) || (i & 6) == 4) | composer.changedInstance(navigationEventDispatcher);
        Object objRememberedValue2 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue2 == Composer.Companion.getEmpty()) {
            objRememberedValue2 = new RememberNavigationEventDispatcherOwnerKt$rememberNavigationEventDispatcherOwner$2$1(navigationEventDispatcher, z, null);
            composer.updateRememberedValue(objRememberedValue2);
        }
        EffectsKt.LaunchedEffect(boolValueOf, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composer, i4);
        boolean zChangedInstance2 = composer.changedInstance(navigationEventDispatcher);
        Object objRememberedValue3 = composer.rememberedValue();
        if (zChangedInstance2 || objRememberedValue3 == Composer.Companion.getEmpty()) {
            objRememberedValue3 = new m43(navigationEventDispatcher, i3);
            composer.updateRememberedValue(objRememberedValue3);
        }
        EffectsKt.DisposableEffect(navigationEventDispatcher, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composer, 0);
        boolean zChanged2 = composer.changed(navigationEventDispatcher);
        Object objRememberedValue4 = composer.rememberedValue();
        if (zChanged2 || objRememberedValue4 == Composer.Companion.getEmpty()) {
            objRememberedValue4 = new ComposeNavigationEventDispatcherOwner(navigationEventDispatcher);
            composer.updateRememberedValue(objRememberedValue4);
        }
        ComposeNavigationEventDispatcherOwner composeNavigationEventDispatcherOwner = (ComposeNavigationEventDispatcherOwner) objRememberedValue4;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return composeNavigationEventDispatcherOwner;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult rememberNavigationEventDispatcherOwner$lambda$5$lambda$4(final NavigationEventDispatcher navigationEventDispatcher, DisposableEffectScope disposableEffectScope) {
        return new DisposableEffectResult() { // from class: androidx.navigationevent.compose.RememberNavigationEventDispatcherOwnerKt$rememberNavigationEventDispatcherOwner$lambda$5$lambda$4$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                navigationEventDispatcher.dispose();
            }
        };
    }
}
