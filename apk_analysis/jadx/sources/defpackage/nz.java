package defpackage;

import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.text.selection.SelectionManager_androidKt;
import androidx.compose.material3.DateRangeInputKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.spatial.RelativeLayoutBounds;
import androidx.compose.ui.unit.Density;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nz implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ nz(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return AwaitFirstLayoutModifier.Node.requestOnAfterLayoutCallback$lambda$0((AwaitFirstLayoutModifier.Node) obj3, (AwaitFirstLayoutModifier) obj2, (RelativeLayoutBounds) obj);
            case 1:
                return DateRangeInputKt.DateRangeInputContent$lambda$7$lambda$4$lambda$3((bm3) obj3, (Long) obj2, (Long) obj);
            case 2:
                return SelectionManager_androidKt.selectionMagnifier$lambda$0$4$0((Density) obj3, (MutableState) obj2, (ll3) obj);
            default:
                return WorkSpecDao_Impl.updateWorkSpec$lambda$1((WorkSpecDao_Impl) obj3, (WorkSpec) obj2, (SQLiteConnection) obj);
        }
    }
}
