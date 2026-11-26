package androidx.compose.runtime;

import androidx.compose.runtime.internal.ComposableLambdaKt;
import defpackage.bm3;
import defpackage.j59;
import defpackage.xt1;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposableSingletons$RecomposerKt {
    public static final ComposableSingletons$RecomposerKt INSTANCE = new ComposableSingletons$RecomposerKt();

    /* JADX INFO: renamed from: lambda$-1091980426, reason: not valid java name */
    private static bm3<Composer, Integer, j59> f43lambda$1091980426 = ComposableLambdaKt.composableLambdaInstance(-1091980426, false, new xt1(0));

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 lambda__1091980426$lambda$0(Composer composer, int i) {
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1091980426, i, -1, "androidx.compose.runtime.ComposableSingletons$RecomposerKt.lambda$-1091980426.<anonymous> (Recomposer.kt:469)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: renamed from: getLambda$-1091980426$runtime, reason: not valid java name */
    public final bm3<Composer, Integer, j59> m5313getLambda$1091980426$runtime() {
        return f43lambda$1091980426;
    }
}
