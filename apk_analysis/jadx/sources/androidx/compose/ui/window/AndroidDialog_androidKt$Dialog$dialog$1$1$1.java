package androidx.compose.ui.window;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidDialog_androidKt$Dialog$dialog$1$1$1 extends gh4 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ State<bm3<Composer, Integer, j59>> $currentContent$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AndroidDialog_androidKt$Dialog$dialog$1$1$1(State<? extends bm3<? super Composer, ? super Integer, j59>> state) {
        super(2);
        this.$currentContent$delegate = state;
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1338939603, i, -1, "androidx.compose.ui.window.Dialog.<anonymous>.<anonymous>.<anonymous> (AndroidDialog.android.kt:265)");
        }
        Modifier.Companion companion = Modifier.Companion;
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = AndroidDialog_androidKt$Dialog$dialog$1$1$1$1$1.INSTANCE;
            composer.updateRememberedValue(objRememberedValue);
        }
        AndroidDialog_androidKt.DialogLayout(SemanticsModifierKt.semantics$default(companion, false, (nl3) objRememberedValue, 1, null), AndroidDialog_androidKt.Dialog$lambda$0(this.$currentContent$delegate), composer, 0, 0);
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
