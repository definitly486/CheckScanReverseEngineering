package defpackage;

import androidx.compose.material3.SheetState;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.unit.TextUnit;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ao3 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ao3(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                ze7 ze7Var = (ze7) obj;
                ze7Var.getClass();
                ((i36) obj2).getClass();
                return new fs4((do3) ze7Var.e(x07.a(do3.class), null, null));
            case 1:
                return SaversKt.TextUnitSaver$lambda$0((SaverScope) obj, (TextUnit) obj2);
            default:
                return SheetState.Companion.Saver$lambda$0((SaverScope) obj, (SheetState) obj2);
        }
    }
}
