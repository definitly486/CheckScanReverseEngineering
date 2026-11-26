package androidx.compose.ui.window;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: renamed from: androidx.compose.ui.window.ComposableSingletons$AndroidPopup_androidKt$lambda$-1131826196$1, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public final class ComposableSingletons$AndroidPopup_androidKt$lambda$1131826196$1 extends gh4 implements bm3<Composer, Integer, j59> {
    public static final ComposableSingletons$AndroidPopup_androidKt$lambda$1131826196$1 INSTANCE = new ComposableSingletons$AndroidPopup_androidKt$lambda$1131826196$1();

    public ComposableSingletons$AndroidPopup_androidKt$lambda$1131826196$1() {
        super(2);
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1131826196, i, -1, "androidx.compose.ui.window.ComposableSingletons$AndroidPopup_androidKt.lambda$-1131826196.<anonymous> (AndroidPopup.android.kt:698)");
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
}
