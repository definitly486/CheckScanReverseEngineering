package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class DateRangeInputKt$DateRangeInputContent$2$3 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ String $pattern;

    public DateRangeInputKt$DateRangeInputContent$2$3(String str) {
        this.$pattern = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$1$lambda$0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        return j59.a;
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1229526589, i, -1, "androidx.compose.material3.DateRangeInputContent.<anonymous>.<anonymous> (DateRangeInput.kt:86)");
        }
        String str = this.$pattern;
        Modifier.Companion companion = Modifier.Companion;
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new q0();
            composer.updateRememberedValue(objRememberedValue);
        }
        TextKt.m4085TextNvy7gAk(str, SemanticsModifierKt.clearAndSetSemantics(companion, (nl3) objRememberedValue), 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer, 0, 0, 262140);
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
