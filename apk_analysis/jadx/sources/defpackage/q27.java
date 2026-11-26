package defpackage;

import androidx.activity.compose.ReportDrawnKt;
import androidx.compose.foundation.text.selection.SelectionContainerKt;
import androidx.compose.runtime.Composer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q27 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ cm3 d;

    public /* synthetic */ q27(cm3 cm3Var, int i, int i2) {
        this.b = i2;
        this.d = cm3Var;
        this.c = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return ReportDrawnKt.ReportDrawnAfter$lambda$0((nl3) this.d, this.c, (Composer) obj, iIntValue);
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                return SelectionContainerKt.DisableSelection$lambda$0((bm3) this.d, this.c, (Composer) obj, iIntValue2);
        }
    }
}
