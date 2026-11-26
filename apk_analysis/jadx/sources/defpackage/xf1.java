package defpackage;

import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.List;
import yads.u13;
import yads.yu3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xf1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ xf1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                String str = (String) obj2;
                SQLiteStatement sQLiteStatementPrepare = ((SQLiteConnection) obj).prepare("DELETE FROM cheque_requests WHERE qrCode = ?");
                try {
                    if (str == null) {
                        sQLiteStatementPrepare.mo9364bindNull(1);
                    } else {
                        sQLiteStatementPrepare.mo9365bindText(1, str);
                    }
                    sQLiteStatementPrepare.step();
                    j59 j59Var = j59.a;
                    sQLiteStatementPrepare.close();
                    return j59Var;
                } catch (Throwable th) {
                    sQLiteStatementPrepare.close();
                    throw th;
                }
            case 1:
                return LazyGridState.Companion.saver$lambda$3((LazyLayoutCacheWindow) obj2, (List) obj);
            default:
                return yu3.d((List) obj2, (u13) obj);
        }
    }
}
