package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.dm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposableSingletons$SnackbarHostKt {
    public static final ComposableSingletons$SnackbarHostKt INSTANCE = new ComposableSingletons$SnackbarHostKt();

    /* JADX INFO: renamed from: lambda$-1548712596, reason: not valid java name */
    private static dm3<SnackbarData, Composer, Integer, j59> f35lambda$1548712596 = ComposableLambdaKt.composableLambdaInstance(-1548712596, false, new dm3<SnackbarData, Composer, Integer, j59>() { // from class: androidx.compose.material3.ComposableSingletons$SnackbarHostKt$lambda$-1548712596$1
        public final void invoke(SnackbarData snackbarData, Composer composer, int i) {
            SnackbarData snackbarData2;
            int i2;
            if ((i & 6) == 0) {
                snackbarData2 = snackbarData;
                i2 = i | (composer.changed(snackbarData2) ? 4 : 2);
            } else {
                snackbarData2 = snackbarData;
                i2 = i;
            }
            if (!composer.shouldExecute((i2 & 19) != 18, i2 & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1548712596, i2, -1, "androidx.compose.material3.ComposableSingletons$SnackbarHostKt.lambda$-1548712596.<anonymous> (SnackbarHost.kt:219)");
            }
            SnackbarKt.m3928SnackbarsDKtq54(snackbarData2, null, false, null, 0L, 0L, 0L, 0L, 0L, composer, i2 & 14, TypedValues.PositionType.TYPE_POSITION_TYPE);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ j59 invoke(SnackbarData snackbarData, Composer composer, Integer num) {
            invoke(snackbarData, composer, num.intValue());
            return j59.a;
        }
    });

    /* JADX INFO: renamed from: getLambda$-1548712596$material3, reason: not valid java name */
    public final dm3<SnackbarData, Composer, Integer, j59> m3318getLambda$1548712596$material3() {
        return f35lambda$1548712596;
    }
}
