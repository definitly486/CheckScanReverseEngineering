package androidx.compose.foundation.text;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.tt1;

/* JADX INFO: loaded from: classes.dex */
public final class ComposableSingletons$CoreTextFieldKt {
    public static final ComposableSingletons$CoreTextFieldKt INSTANCE = new ComposableSingletons$CoreTextFieldKt();
    private static dm3<bm3<? super Composer, ? super Integer, j59>, Composer, Integer, j59> lambda$559628295 = ComposableLambdaKt.composableLambdaInstance(559628295, false, new tt1());

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 lambda_559628295$lambda$0(bm3 bm3Var, Composer composer, int i) {
        if ((i & 6) == 0) {
            i |= composer.changedInstance(bm3Var) ? 4 : 2;
        }
        if (composer.shouldExecute((i & 19) != 18, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(559628295, i, -1, "androidx.compose.foundation.text.ComposableSingletons$CoreTextFieldKt.lambda$559628295.<anonymous> (CoreTextField.kt:206)");
            }
            bm3Var.invoke(composer, Integer.valueOf(i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    public final dm3<bm3<? super Composer, ? super Integer, j59>, Composer, Integer, j59> getLambda$559628295$foundation() {
        return lambda$559628295;
    }
}
