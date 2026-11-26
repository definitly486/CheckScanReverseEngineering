package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.SaversKt;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class eo1 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ eo1(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                String str = (String) obj;
                o22.a aVar = (o22.a) obj2;
                str.getClass();
                aVar.getClass();
                if (str.length() == 0) {
                    return aVar.toString();
                }
                return str + ", " + aVar;
            case 1:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.shouldExecute((iIntValue & 3) != 2, iIntValue & 1)) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1035024298, iIntValue, -1, "com.warefly.checkscan.design.compose.toolbars.topbar.ComposableSingletons$CheckscanTopBarKt.lambda$1035024298.<anonymous> (CheckscanTopBar.kt:70)");
                    }
                    Color.Companion companion = Color.Companion;
                    long jM6269getWhite0d7_KjU = companion.m6269getWhite0d7_KjU();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-823658713, 0, -1, "com.warefly.checkscan.design.compose.theme.CheckscanTheme.<get-colors> (CheckscanTheme.kt:28)");
                    }
                    ProvidableCompositionLocal<mc1> providableCompositionLocal = oc1.b;
                    mc1 mc1Var = (mc1) composer.consume(providableCompositionLocal);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    long j = mc1Var.e;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-823658713, 0, -1, "com.warefly.checkscan.design.compose.theme.CheckscanTheme.<get-colors> (CheckscanTheme.kt:28)");
                    }
                    mc1 mc1Var2 = (mc1) composer.consume(providableCompositionLocal);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    tk6.c(new uk6.e(jM6269getWhite0d7_KjU, j, mc1Var2.d, Color.m6222boximpl(companion.m6269getWhite0d7_KjU())), null, composer, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composer.skipToGroupEnd();
                }
                return j59.a;
            case 2:
                o22 o22Var = (o22) obj;
                o22.a aVar2 = (o22.a) obj2;
                if (!(aVar2 instanceof n02)) {
                    return o22Var.plus(aVar2);
                }
                ((n02) aVar2).o();
                return o22Var.plus(null);
            default:
                return SaversKt.OffsetSaver$lambda$0((SaverScope) obj, (Offset) obj2);
        }
    }
}
