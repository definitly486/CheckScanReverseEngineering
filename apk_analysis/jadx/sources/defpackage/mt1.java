package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.intl.LocaleList;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mt1 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ mt1(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.shouldExecute((iIntValue & 3) != 2, iIntValue & 1)) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-707839760, iIntValue, -1, "com.warefly.checkscan.design.compose.toolbars.topbar.ComposableSingletons$CheckscanTopBarKt.lambda$-707839760.<anonymous> (CheckscanTopBar.kt:92)");
                    }
                    tk6.c(new uk6.d(), null, composer, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composer.skipToGroupEnd();
                }
                return j59.a;
            default:
                return SaversKt.LocaleListSaver$lambda$0((SaverScope) obj, (LocaleList) obj2);
        }
    }
}
