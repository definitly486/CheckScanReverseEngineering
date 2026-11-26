package androidx.compose.foundation.lazy.layout;

import android.os.Build;
import android.view.View;
import androidx.compose.foundation.R;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class PrefetchScheduler_androidKt {
    private static final PrefetchScheduler_androidKt$RobolectricImpl$1 RobolectricImpl;

    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Multi-variable type inference failed */
    static {
        PrefetchScheduler_androidKt$RobolectricImpl$1 prefetchScheduler_androidKt$RobolectricImpl$1;
        String str = Build.FINGERPRINT;
        if (str != null) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            if (lowerCase.equals("robolectric")) {
                prefetchScheduler_androidKt$RobolectricImpl$1 = new PrefetchScheduler() { // from class: androidx.compose.foundation.lazy.layout.PrefetchScheduler_androidKt$RobolectricImpl$1
                    @Override // androidx.compose.foundation.lazy.layout.PrefetchScheduler
                    public void schedulePrefetch(PrefetchRequest prefetchRequest) {
                    }
                };
            } else {
                prefetchScheduler_androidKt$RobolectricImpl$1 = 0;
            }
        } else {
            prefetchScheduler_androidKt$RobolectricImpl$1 = 0;
        }
        RobolectricImpl = prefetchScheduler_androidKt$RobolectricImpl$1;
    }

    private static /* synthetic */ void getRobolectricImpl$annotations() {
    }

    public static final PrefetchScheduler rememberDefaultPrefetchScheduler(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1141871251, i, -1, "androidx.compose.foundation.lazy.layout.rememberDefaultPrefetchScheduler (PrefetchScheduler.android.kt:36)");
        }
        PrefetchScheduler prefetchScheduler = RobolectricImpl;
        if (prefetchScheduler != null) {
            composer.startReplaceGroup(1345554384);
        } else {
            composer.startReplaceGroup(1345603457);
            View view = (View) composer.consume(AndroidCompositionLocals_androidKt.getLocalView());
            boolean zChanged = composer.changed(view);
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                Object tag = view.getTag(R.id.compose_prefetch_scheduler);
                Object androidPrefetchScheduler = tag instanceof PrefetchScheduler ? (PrefetchScheduler) tag : null;
                if (androidPrefetchScheduler == null) {
                    androidPrefetchScheduler = new AndroidPrefetchScheduler(view);
                    view.setTag(R.id.compose_prefetch_scheduler, androidPrefetchScheduler);
                }
                objRememberedValue = androidPrefetchScheduler;
                composer.updateRememberedValue(objRememberedValue);
            }
            prefetchScheduler = (PrefetchScheduler) objRememberedValue;
        }
        composer.endReplaceGroup();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return prefetchScheduler;
    }
}
