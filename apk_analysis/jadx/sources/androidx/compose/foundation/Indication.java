package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public interface Indication {
    @ul2
    default IndicationInstance rememberUpdatedInstance(InteractionSource interactionSource, Composer composer, int i) {
        composer.startReplaceGroup(1257603829);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1257603829, i, -1, "androidx.compose.foundation.Indication.rememberUpdatedInstance (Indication.kt:74)");
        }
        NoIndicationInstance noIndicationInstance = NoIndicationInstance.INSTANCE;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return noIndicationInstance;
    }
}
