package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class SnackbarKt$Snackbar$dismissActionComposable$1 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ SnackbarData $snackbarData;

    public SnackbarKt$Snackbar$dismissActionComposable$1(SnackbarData snackbarData) {
        this.$snackbarData = snackbarData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$1$lambda$0(SnackbarData snackbarData) {
        snackbarData.dismiss();
        return j59.a;
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1812633777, i, -1, "androidx.compose.material3.Snackbar.<anonymous> (Snackbar.kt:223)");
        }
        boolean zChanged = composer.changed(this.$snackbarData);
        final SnackbarData snackbarData = this.$snackbarData;
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new ll3() { // from class: androidx.compose.material3.e4
                @Override // defpackage.ll3
                public final Object invoke() {
                    return SnackbarKt$Snackbar$dismissActionComposable$1.invoke$lambda$1$lambda$0(snackbarData);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        IconButtonKt.IconButton((ll3) objRememberedValue, null, false, null, null, null, ComposableSingletons$SnackbarKt.INSTANCE.getLambda$984817901$material3(), composer, 1572864, 62);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
        invoke(composer, num.intValue());
        return j59.a;
    }
}
