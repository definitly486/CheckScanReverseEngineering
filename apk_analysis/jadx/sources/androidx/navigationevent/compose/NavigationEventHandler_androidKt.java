package androidx.navigationevent.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.platform.InspectionModeKt;

/* JADX INFO: loaded from: classes3.dex */
public final class NavigationEventHandler_androidKt {
    public static final boolean isInspectionMode(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1476766739, i, -1, "androidx.navigationevent.compose.isInspectionMode (NavigationEventHandler.android.kt:21)");
        }
        boolean zBooleanValue = ((Boolean) composer.consume(InspectionModeKt.getLocalInspectionMode())).booleanValue();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return zBooleanValue;
    }
}
