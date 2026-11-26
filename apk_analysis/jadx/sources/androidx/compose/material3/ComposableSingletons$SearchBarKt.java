package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import defpackage.bm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposableSingletons$SearchBarKt {
    public static final ComposableSingletons$SearchBarKt INSTANCE = new ComposableSingletons$SearchBarKt();
    private static bm3<Composer, Integer, j59> lambda$1165377840 = ComposableLambdaKt.composableLambdaInstance(1165377840, false, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ComposableSingletons$SearchBarKt$lambda$1165377840$1
        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1165377840, i, -1, "androidx.compose.material3.ComposableSingletons$SearchBarKt.lambda$1165377840.<anonymous> (SearchBar.kt:2125)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    });

    /* JADX INFO: renamed from: lambda$-1146652811, reason: not valid java name */
    private static bm3<Composer, Integer, j59> f34lambda$1146652811 = ComposableLambdaKt.composableLambdaInstance(-1146652811, false, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ComposableSingletons$SearchBarKt$lambda$-1146652811$1
        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1146652811, i, -1, "androidx.compose.material3.ComposableSingletons$SearchBarKt.lambda$-1146652811.<anonymous> (SearchBar.kt:2474)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    });

    /* JADX INFO: renamed from: getLambda$-1146652811$material3, reason: not valid java name */
    public final bm3<Composer, Integer, j59> m3317getLambda$1146652811$material3() {
        return f34lambda$1146652811;
    }

    public final bm3<Composer, Integer, j59> getLambda$1165377840$material3() {
        return lambda$1165377840;
    }
}
