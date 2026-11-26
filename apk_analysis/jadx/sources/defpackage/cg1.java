package defpackage;

import androidx.compose.foundation.lazy.grid.LazyGridStateKt;
import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import yads.vi1;
import yads.ww0;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class cg1 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ cg1(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                SQLiteStatement sQLiteStatementPrepare = ((SQLiteConnection) obj).prepare("SELECT * FROM cheque_requests WHERE status = 'WAITING' OR status = 'FNS_NOT_RESPONDING'");
                try {
                    int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "qrCode");
                    int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, NotificationCompat.CATEGORY_STATUS);
                    int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requestJson");
                    int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "responseJson");
                    ArrayList arrayList = new ArrayList();
                    while (sQLiteStatementPrepare.step()) {
                        arrayList.add(new kg1(sQLiteStatementPrepare.getLong(columnIndexOrThrow), sQLiteStatementPrepare.isNull(columnIndexOrThrow2) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow2), sQLiteStatementPrepare.isNull(columnIndexOrThrow3) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow3), sQLiteStatementPrepare.isNull(columnIndexOrThrow4) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow4), sQLiteStatementPrepare.isNull(columnIndexOrThrow5) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow5)));
                        break;
                    }
                    return arrayList;
                } finally {
                    sQLiteStatementPrepare.close();
                }
            case 1:
                return Integer.valueOf(LazyGridStateKt.EmptyLazyGridLayoutInfo$lambda$1(((Integer) obj).intValue()));
            case 2:
                return vi1.a((String) obj);
            default:
                return ww0.a((String) obj);
        }
    }
}
