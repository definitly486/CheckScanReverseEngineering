package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposableSingletons$BottomSheetScaffoldKt {
    public static final ComposableSingletons$BottomSheetScaffoldKt INSTANCE = new ComposableSingletons$BottomSheetScaffoldKt();
    private static bm3<Composer, Integer, j59> lambda$1392012807 = ComposableLambdaKt.composableLambdaInstance(1392012807, false, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ComposableSingletons$BottomSheetScaffoldKt$lambda$1392012807$1
        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1392012807, i, -1, "androidx.compose.material3.ComposableSingletons$BottomSheetScaffoldKt.lambda$1392012807.<anonymous> (BottomSheetScaffold.kt:128)");
            }
            BottomSheetDefaults.INSTANCE.m3119DragHandlelgZ2HuY(null, 0.0f, 0.0f, null, 0L, composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
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
    private static dm3<SnackbarHostState, Composer, Integer, j59> lambda$1768941633 = ComposableLambdaKt.composableLambdaInstance(1768941633, false, new dm3<SnackbarHostState, Composer, Integer, j59>() { // from class: androidx.compose.material3.ComposableSingletons$BottomSheetScaffoldKt$lambda$1768941633$1
        public final void invoke(SnackbarHostState snackbarHostState, Composer composer, int i) {
            if ((i & 6) == 0) {
                i |= composer.changed(snackbarHostState) ? 4 : 2;
            }
            if (!composer.shouldExecute((i & 19) != 18, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1768941633, i, -1, "androidx.compose.material3.ComposableSingletons$BottomSheetScaffoldKt.lambda$1768941633.<anonymous> (BottomSheetScaffold.kt:131)");
            }
            SnackbarHostKt.SnackbarHost(snackbarHostState, null, null, composer, i & 14, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ j59 invoke(SnackbarHostState snackbarHostState, Composer composer, Integer num) {
            invoke(snackbarHostState, composer, num.intValue());
            return j59.a;
        }
    });

    /* JADX INFO: renamed from: lambda$-788244078, reason: not valid java name */
    private static bm3<Composer, Integer, j59> f26lambda$788244078 = ComposableLambdaKt.composableLambdaInstance(-788244078, false, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ComposableSingletons$BottomSheetScaffoldKt$lambda$-788244078$1
        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-788244078, i, -1, "androidx.compose.material3.ComposableSingletons$BottomSheetScaffoldKt.lambda$-788244078.<anonymous> (BottomSheetScaffold.kt:415)");
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

    /* JADX INFO: renamed from: getLambda$-788244078$material3, reason: not valid java name */
    public final bm3<Composer, Integer, j59> m3309getLambda$788244078$material3() {
        return f26lambda$788244078;
    }

    public final bm3<Composer, Integer, j59> getLambda$1392012807$material3() {
        return lambda$1392012807;
    }

    public final dm3<SnackbarHostState, Composer, Integer, j59> getLambda$1768941633$material3() {
        return lambda$1768941633;
    }
}
