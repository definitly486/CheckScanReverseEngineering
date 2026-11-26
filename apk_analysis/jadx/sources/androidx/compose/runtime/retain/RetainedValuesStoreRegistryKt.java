package androidx.compose.runtime.retain;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import defpackage.a62;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class RetainedValuesStoreRegistryKt {
    public static final RetainedValuesStoreRegistry retainRetainedValuesStoreRegistry(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1800021473, i, -1, "androidx.compose.runtime.retain.retainRetainedValuesStoreRegistry (RetainedValuesStoreRegistry.kt:145)");
        }
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new a62(1);
            composer.updateRememberedValue(objRememberedValue);
        }
        RetainedValuesStoreRegistry retainedValuesStoreRegistry = ((RetainedValuesStoreRegistryWrapper) RetainKt.retain(-285137363, (ll3) objRememberedValue, composer, 48)).getRetainedValuesStoreRegistry();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return retainedValuesStoreRegistry;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RetainedValuesStoreRegistryWrapper retainRetainedValuesStoreRegistry$lambda$0$0() {
        return new RetainedValuesStoreRegistryWrapper();
    }
}
