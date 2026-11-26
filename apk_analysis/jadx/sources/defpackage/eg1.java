package defpackage;

import androidx.compose.material3.SwipeToDismissBoxKt;
import androidx.compose.material3.SwipeToDismissBoxValue;
import androidx.compose.runtime.snapshots.GlobalSnapshot;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import yads.az1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class eg1 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ eg1(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        boolean zRememberSwipeToDismissBoxState$lambda$3$lambda$2;
        switch (this.b) {
            case 0:
                SQLiteStatement sQLiteStatementPrepare = ((SQLiteConnection) obj).prepare("SELECT qrCode FROM cheque_requests WHERE status = 'CHEQUE_NO_SHOP_RECEIVED'");
                try {
                    ArrayList arrayList = new ArrayList();
                    while (sQLiteStatementPrepare.step()) {
                        arrayList.add(sQLiteStatementPrepare.isNull(0) ? null : sQLiteStatementPrepare.getText(0));
                        break;
                    }
                    return arrayList;
                } finally {
                    sQLiteStatementPrepare.close();
                }
            case 1:
                return GlobalSnapshot._init_$lambda$0(obj);
            case 2:
                zRememberSwipeToDismissBoxState$lambda$3$lambda$2 = SwipeToDismissBoxKt.rememberSwipeToDismissBoxState$lambda$3$lambda$2((SwipeToDismissBoxValue) obj);
                break;
            default:
                zRememberSwipeToDismissBoxState$lambda$3$lambda$2 = az1.b(obj);
                break;
        }
        return Boolean.valueOf(zRememberSwipeToDismissBoxState$lambda$3$lambda$2);
    }
}
