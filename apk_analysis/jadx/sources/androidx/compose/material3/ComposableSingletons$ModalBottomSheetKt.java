package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposableSingletons$ModalBottomSheetKt {
    public static final ComposableSingletons$ModalBottomSheetKt INSTANCE = new ComposableSingletons$ModalBottomSheetKt();
    private static bm3<Composer, Integer, j59> lambda$1121996006 = ComposableLambdaKt.composableLambdaInstance(1121996006, false, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ComposableSingletons$ModalBottomSheetKt$lambda$1121996006$1
        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1121996006, i, -1, "androidx.compose.material3.ComposableSingletons$ModalBottomSheetKt.lambda$1121996006.<anonymous> (ModalBottomSheet.kt:133)");
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

    /* JADX INFO: renamed from: lambda$-655173438, reason: not valid java name */
    private static bm3<Composer, Integer, j59> f29lambda$655173438 = ComposableLambdaKt.composableLambdaInstance(-655173438, false, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ComposableSingletons$ModalBottomSheetKt$lambda$-655173438$1
        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-655173438, i, -1, "androidx.compose.material3.ComposableSingletons$ModalBottomSheetKt.lambda$-655173438.<anonymous> (ModalBottomSheet.kt:232)");
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
    private static bm3<Composer, Integer, j59> lambda$1716959002 = ComposableLambdaKt.composableLambdaInstance(1716959002, false, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ComposableSingletons$ModalBottomSheetKt$lambda$1716959002$1
        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1716959002, i, -1, "androidx.compose.material3.ComposableSingletons$ModalBottomSheetKt.lambda$1716959002.<anonymous> (ModalBottomSheet.kt:269)");
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

    /* JADX INFO: renamed from: getLambda$-655173438$material3, reason: not valid java name */
    public final bm3<Composer, Integer, j59> m3312getLambda$655173438$material3() {
        return f29lambda$655173438;
    }

    public final bm3<Composer, Integer, j59> getLambda$1121996006$material3() {
        return lambda$1121996006;
    }

    public final bm3<Composer, Integer, j59> getLambda$1716959002$material3() {
        return lambda$1716959002;
    }
}
