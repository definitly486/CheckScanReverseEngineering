package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class nt1 implements bm3 {
    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        if (composer.shouldExecute((iIntValue & 3) != 2, iIntValue & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1769811749, iIntValue, -1, "com.warefly.checkscan.design.compose.toolbars.topbar.ComposableSingletons$CheckscanTopBarKt.lambda$1769811749.<anonymous> (CheckscanTopBar.kt:89)");
            }
            dd1.a("Очень длинный заголовок тулбара, который не помещается", null, pt1.f, pt1.g, composer, 3462, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }
}
