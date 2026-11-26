package defpackage;

import androidx.compose.animation.core.VectorConvertersKt;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.impl.model.WorkSpecDao_Impl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class eu6 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ eu6(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                SQLiteStatement sQLiteStatementPrepare = ((SQLiteConnection) obj).prepare("DELETE FROM purchases_table");
                try {
                    sQLiteStatementPrepare.step();
                    return j59.a;
                } finally {
                    sQLiteStatementPrepare.close();
                }
            case 1:
                return VectorConvertersKt.IntToVector$lambda$0(((Integer) obj).intValue());
            default:
                return WorkSpecDao_Impl.getAllWorkSpecIdsLiveData$lambda$6("SELECT id FROM workspec", (SQLiteConnection) obj);
        }
    }
}
