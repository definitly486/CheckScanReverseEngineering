package defpackage;

import androidx.compose.foundation.gestures.Draggable2DElement;
import androidx.compose.material3.SwipeToDismissBoxKt;
import androidx.compose.material3.SwipeToDismissBoxValue;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.internal.NavControllerImpl;
import androidx.room.TriggerBasedInvalidationTracker;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import yads.az1;
import yads.ee2;
import yads.jg1;
import yads.z51;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gg1 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ gg1(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                SQLiteStatement sQLiteStatementPrepare = ((SQLiteConnection) obj).prepare("DELETE FROM cheque_requests");
                try {
                    sQLiteStatementPrepare.step();
                    return j59.a;
                } finally {
                    sQLiteStatementPrepare.close();
                }
            case 1:
                return Boolean.valueOf(Draggable2DElement.CanDrag$lambda$0((PointerType) obj));
            case 2:
                return NavControllerImpl.clearBackStackInternal$lambda$19((NavOptionsBuilder) obj);
            case 3:
                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$15$lambda$14((SwipeToDismissBoxValue) obj);
            case 4:
                return TriggerBasedInvalidationTracker.checkInvalidatedTables$lambda$14((SQLiteStatement) obj);
            case 5:
                return Boolean.valueOf(az1.d(obj));
            case 6:
                return Boolean.valueOf(ee2.a(obj));
            case 7:
                return jg1.a((String) obj);
            default:
                return Boolean.valueOf(z51.a(obj));
        }
    }
}
