package defpackage;

import androidx.compose.foundation.text.CommonContextMenuAreaKt;
import androidx.compose.foundation.text.ContextMenu_androidKt;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.material3.DrawerState;
import androidx.compose.material3.NavigationDrawerKt;
import androidx.compose.runtime.Composer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yo1 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ cm3 d;
    public final /* synthetic */ int e;

    public /* synthetic */ yo1(Object obj, cm3 cm3Var, int i, int i2) {
        this.b = i2;
        this.c = obj;
        this.d = cm3Var;
        this.e = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return CommonContextMenuAreaKt.CommonContextMenuArea$lambda$14((SelectionManager) this.c, (bm3) this.d, this.e, (Composer) obj, iIntValue);
            case 1:
                int iIntValue2 = ((Integer) obj2).intValue();
                return ContextMenu_androidKt.ContextMenuArea$lambda$2((SelectionManager) this.c, (bm3) this.d, this.e, (Composer) obj, iIntValue2);
            default:
                int iIntValue3 = ((Integer) obj2).intValue();
                return NavigationDrawerKt.DrawerPredictiveBackHandler$lambda$62((DrawerState) this.c, (dm3) this.d, this.e, (Composer) obj, iIntValue3);
        }
    }
}
