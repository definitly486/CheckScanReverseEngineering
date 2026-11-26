package androidx.compose.foundation.text;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.dt1;
import defpackage.et1;
import defpackage.ft1;
import defpackage.gt1;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public final class ComposableSingletons$BasicTextFieldKt {
    public static final ComposableSingletons$BasicTextFieldKt INSTANCE = new ComposableSingletons$BasicTextFieldKt();
    private static dm3<bm3<? super Composer, ? super Integer, j59>, Composer, Integer, j59> lambda$759698998 = ComposableLambdaKt.composableLambdaInstance(759698998, false, new dt1());
    private static dm3<bm3<? super Composer, ? super Integer, j59>, Composer, Integer, j59> lambda$486633673 = ComposableLambdaKt.composableLambdaInstance(486633673, false, new et1());
    private static dm3<bm3<? super Composer, ? super Integer, j59>, Composer, Integer, j59> lambda$444370233 = ComposableLambdaKt.composableLambdaInstance(444370233, false, new ft1());

    /* JADX INFO: renamed from: lambda$-665310900, reason: not valid java name */
    private static dm3<bm3<? super Composer, ? super Integer, j59>, Composer, Integer, j59> f4lambda$665310900 = ComposableLambdaKt.composableLambdaInstance(-665310900, false, new gt1());

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 lambda_444370233$lambda$0(bm3 bm3Var, Composer composer, int i) {
        if ((i & 6) == 0) {
            i |= composer.changedInstance(bm3Var) ? 4 : 2;
        }
        if (composer.shouldExecute((i & 19) != 18, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(444370233, i, -1, "androidx.compose.foundation.text.ComposableSingletons$BasicTextFieldKt.lambda$444370233.<anonymous> (BasicTextField.kt:976)");
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 lambda_486633673$lambda$0(bm3 bm3Var, Composer composer, int i) {
        if ((i & 6) == 0) {
            i |= composer.changedInstance(bm3Var) ? 4 : 2;
        }
        if (composer.shouldExecute((i & 19) != 18, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(486633673, i, -1, "androidx.compose.foundation.text.ComposableSingletons$BasicTextFieldKt.lambda$486633673.<anonymous> (BasicTextField.kt:932)");
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 lambda_759698998$lambda$0(bm3 bm3Var, Composer composer, int i) {
        if ((i & 6) == 0) {
            i |= composer.changedInstance(bm3Var) ? 4 : 2;
        }
        if (composer.shouldExecute((i & 19) != 18, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(759698998, i, -1, "androidx.compose.foundation.text.ComposableSingletons$BasicTextFieldKt.lambda$759698998.<anonymous> (BasicTextField.kt:775)");
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 lambda__665310900$lambda$0(bm3 bm3Var, Composer composer, int i) {
        if ((i & 6) == 0) {
            i |= composer.changedInstance(bm3Var) ? 4 : 2;
        }
        if (composer.shouldExecute((i & 19) != 18, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-665310900, i, -1, "androidx.compose.foundation.text.ComposableSingletons$BasicTextFieldKt.lambda$-665310900.<anonymous> (BasicTextField.kt:1016)");
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

    /* JADX INFO: renamed from: getLambda$-665310900$foundation, reason: not valid java name */
    public final dm3<bm3<? super Composer, ? super Integer, j59>, Composer, Integer, j59> m2466getLambda$665310900$foundation() {
        return f4lambda$665310900;
    }

    public final dm3<bm3<? super Composer, ? super Integer, j59>, Composer, Integer, j59> getLambda$444370233$foundation() {
        return lambda$444370233;
    }

    public final dm3<bm3<? super Composer, ? super Integer, j59>, Composer, Integer, j59> getLambda$486633673$foundation() {
        return lambda$486633673;
    }

    public final dm3<bm3<? super Composer, ? super Integer, j59>, Composer, Integer, j59> getLambda$759698998$foundation() {
        return lambda$759698998;
    }
}
