package androidx.compose.runtime;

import androidx.compose.runtime.internal.ComposableLambdaKt;
import defpackage.bm3;
import defpackage.j59;
import defpackage.qt1;
import defpackage.vs0;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposableSingletons$CompositionKt {
    public static final ComposableSingletons$CompositionKt INSTANCE = new ComposableSingletons$CompositionKt();
    private static bm3<Composer, Integer, j59> lambda$954879418 = ComposableLambdaKt.composableLambdaInstance(954879418, false, new qt1(0));
    private static bm3<Composer, Integer, j59> lambda$1918065384 = ComposableLambdaKt.composableLambdaInstance(1918065384, false, new vs0(1));

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 lambda_1918065384$lambda$0(Composer composer, int i) {
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1918065384, i, -1, "androidx.compose.runtime.ComposableSingletons$CompositionKt.lambda$1918065384.<anonymous> (Composition.kt:917)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 lambda_954879418$lambda$0(Composer composer, int i) {
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(954879418, i, -1, "androidx.compose.runtime.ComposableSingletons$CompositionKt.lambda$954879418.<anonymous> (Composition.kt:680)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    public final bm3<Composer, Integer, j59> getLambda$1918065384$runtime() {
        return lambda$1918065384;
    }

    public final bm3<Composer, Integer, j59> getLambda$954879418$runtime() {
        return lambda$954879418;
    }
}
