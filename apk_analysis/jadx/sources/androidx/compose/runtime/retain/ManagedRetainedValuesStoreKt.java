package androidx.compose.runtime.retain;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import defpackage.ll3;
import defpackage.oz4;

/* JADX INFO: loaded from: classes2.dex */
public final class ManagedRetainedValuesStoreKt {
    public static final ManagedRetainedValuesStore retainManagedRetainedValuesStore(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(847199873, i, -1, "androidx.compose.runtime.retain.retainManagedRetainedValuesStore (ManagedRetainedValuesStore.kt:172)");
        }
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new oz4(0);
            composer.updateRememberedValue(objRememberedValue);
        }
        ManagedRetainedValuesStore retainedValuesStore = ((RetainManagedRetainedValuesStoreWrapper) RetainKt.retain(-893765632, (ll3) objRememberedValue, composer, 48)).getRetainedValuesStore();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return retainedValuesStore;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RetainManagedRetainedValuesStoreWrapper retainManagedRetainedValuesStore$lambda$0$0() {
        return new RetainManagedRetainedValuesStoreWrapper();
    }
}
