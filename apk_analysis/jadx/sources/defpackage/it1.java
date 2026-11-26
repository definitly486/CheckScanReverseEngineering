package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.unit.TextUnitType;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class it1 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ it1(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        boolean z = true;
        switch (this.b) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.shouldExecute((iIntValue & 3) != 2, iIntValue & 1)) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1651244509, iIntValue, -1, "com.warefly.checkscan.design.compose.toolbars.topbar.ComposableSingletons$CheckscanTopBarKt.lambda$1651244509.<anonymous> (CheckscanTopBar.kt:25)");
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composer.skipToGroupEnd();
                }
                return j59.a;
            case 1:
                o22.a aVar = (o22.a) obj2;
                if (!((Boolean) obj).booleanValue() && !(aVar instanceof n02)) {
                    z = false;
                }
                return Boolean.valueOf(z);
            default:
                return SaversKt.TextUnitTypeSaver$lambda$0((SaverScope) obj, (TextUnitType) obj2);
        }
    }
}
