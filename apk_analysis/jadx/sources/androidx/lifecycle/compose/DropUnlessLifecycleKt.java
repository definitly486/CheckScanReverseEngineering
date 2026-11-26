package androidx.lifecycle.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.DropUnlessLifecycleKt;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.fg;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes3.dex */
public final class DropUnlessLifecycleKt {
    public static final ll3<j59> dropUnlessResumed(LifecycleOwner lifecycleOwner, ll3<j59> ll3Var, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            lifecycleOwner = (LifecycleOwner) composer.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
        }
        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1331131589, i, -1, "androidx.lifecycle.compose.dropUnlessResumed (DropUnlessLifecycle.kt:99)");
        }
        int i3 = i << 3;
        ll3<j59> ll3VarDropUnlessStateIsAtLeast = dropUnlessStateIsAtLeast(Lifecycle.State.RESUMED, lifecycleOwner2, ll3Var, composer, (i3 & 112) | 6 | (i3 & 896), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return ll3VarDropUnlessStateIsAtLeast;
    }

    public static final ll3<j59> dropUnlessStarted(LifecycleOwner lifecycleOwner, ll3<j59> ll3Var, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            lifecycleOwner = (LifecycleOwner) composer.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
        }
        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1207869935, i, -1, "androidx.lifecycle.compose.dropUnlessStarted (DropUnlessLifecycle.kt:77)");
        }
        int i3 = i << 3;
        ll3<j59> ll3VarDropUnlessStateIsAtLeast = dropUnlessStateIsAtLeast(Lifecycle.State.STARTED, lifecycleOwner2, ll3Var, composer, (i3 & 112) | 6 | (i3 & 896), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return ll3VarDropUnlessStateIsAtLeast;
    }

    private static final ll3<j59> dropUnlessStateIsAtLeast(final Lifecycle.State state, final LifecycleOwner lifecycleOwner, final ll3<j59> ll3Var, Composer composer, int i, int i2) {
        if ((i2 & 2) != 0) {
            lifecycleOwner = (LifecycleOwner) composer.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2057956404, i, -1, "androidx.lifecycle.compose.dropUnlessStateIsAtLeast (DropUnlessLifecycle.kt:47)");
        }
        if (state == Lifecycle.State.DESTROYED) {
            fg.c("Target state is not allowed to be `Lifecycle.State.DESTROYED` because Compose disposes of the composition before `Lifecycle.Event.ON_DESTROY` observers are invoked.");
            return null;
        }
        boolean zChangedInstance = composer.changedInstance(lifecycleOwner) | ((((i & 14) ^ 6) > 4 && composer.changed(state.ordinal())) || (i & 6) == 4) | ((((i & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && composer.changed(ll3Var)) || (i & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
        Object objRememberedValue = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new ll3() { // from class: jt2
                @Override // defpackage.ll3
                public final Object invoke() {
                    return DropUnlessLifecycleKt.dropUnlessStateIsAtLeast$lambda$1$0(lifecycleOwner, state, ll3Var);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        ll3<j59> ll3Var2 = (ll3) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return ll3Var2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 dropUnlessStateIsAtLeast$lambda$1$0(LifecycleOwner lifecycleOwner, Lifecycle.State state, ll3 ll3Var) {
        if (lifecycleOwner.getLifecycle().getCurrentState().isAtLeast(state)) {
            ll3Var.invoke();
        }
        return j59.a;
    }
}
