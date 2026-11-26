package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SaversKt;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lt1 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ lt1(int i) {
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
                        ComposerKt.traceEventStart(332452079, iIntValue, -1, "com.warefly.checkscan.design.compose.toolbars.topbar.ComposableSingletons$CheckscanTopBarKt.lambda$332452079.<anonymous> (CheckscanTopBar.kt:91)");
                    }
                    Object objRememberedValue = composer.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new ot1(0);
                        composer.updateRememberedValue(objRememberedValue);
                    }
                    hp5.a((ll3) objRememberedValue, false, null, composer, 54);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composer.skipToGroupEnd();
                }
                return j59.a;
            default:
                return SaversKt.AnnotationRangeSaver$lambda$0((SaverScope) obj, (AnnotatedString.Range) obj2);
        }
    }
}
