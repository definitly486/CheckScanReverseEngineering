package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposableSingletons$ModalBottomSheet_androidKt {
    public static final ComposableSingletons$ModalBottomSheet_androidKt INSTANCE = new ComposableSingletons$ModalBottomSheet_androidKt();

    /* JADX INFO: renamed from: lambda$-1294623166, reason: not valid java name */
    private static bm3<Composer, Integer, j59> f30lambda$1294623166 = ComposableLambdaKt.composableLambdaInstance(-1294623166, false, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ComposableSingletons$ModalBottomSheet_androidKt$lambda$-1294623166$1
        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1294623166, i, -1, "androidx.compose.material3.ComposableSingletons$ModalBottomSheet_androidKt.lambda$-1294623166.<anonymous> (ModalBottomSheet.android.kt:338)");
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

    /* JADX INFO: renamed from: lambda$-91331245, reason: not valid java name */
    private static bm3<Composer, Integer, j59> f31lambda$91331245 = ComposableLambdaKt.composableLambdaInstance(-91331245, false, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ComposableSingletons$ModalBottomSheet_androidKt$lambda$-91331245$1
        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-91331245, i, -1, "androidx.compose.material3.ComposableSingletons$ModalBottomSheet_androidKt.lambda$-91331245.<anonymous> (ModalBottomSheet.android.kt:422)");
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

    /* JADX INFO: renamed from: getLambda$-1294623166$material3, reason: not valid java name */
    public final bm3<Composer, Integer, j59> m3313getLambda$1294623166$material3() {
        return f30lambda$1294623166;
    }

    /* JADX INFO: renamed from: getLambda$-91331245$material3, reason: not valid java name */
    public final bm3<Composer, Integer, j59> m3314getLambda$91331245$material3() {
        return f31lambda$91331245;
    }
}
