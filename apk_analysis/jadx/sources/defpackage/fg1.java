package defpackage;

import androidx.compose.foundation.layout.FlowColumnOverflow;
import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.material3.DefaultSingleRowTopAppBarOverride;
import androidx.compose.material3.SingleRowTopAppBarOverrideScope;
import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import yads.gz1;
import yads.wy1;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class fg1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ fg1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                String str = (String) obj2;
                SQLiteStatement sQLiteStatementPrepare = ((SQLiteConnection) obj).prepare("SELECT * FROM cheque_requests WHERE qrCode = ? LIMIT 1");
                try {
                    sQLiteStatementPrepare.mo9365bindText(1, str);
                    int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "qrCode");
                    int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, NotificationCompat.CATEGORY_STATUS);
                    int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requestJson");
                    int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "responseJson");
                    Object kg1Var = null;
                    if (sQLiteStatementPrepare.step()) {
                        kg1Var = new kg1(sQLiteStatementPrepare.getLong(columnIndexOrThrow), sQLiteStatementPrepare.isNull(columnIndexOrThrow2) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow2), sQLiteStatementPrepare.isNull(columnIndexOrThrow3) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow3), sQLiteStatementPrepare.isNull(columnIndexOrThrow4) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow4), sQLiteStatementPrepare.isNull(columnIndexOrThrow5) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow5));
                    }
                    return kg1Var;
                } finally {
                    sQLiteStatementPrepare.close();
                }
            case 1:
                return DefaultSingleRowTopAppBarOverride.SingleRowTopAppBar$lambda$4$lambda$3((SingleRowTopAppBarOverrideScope) obj2, ((Float) obj).floatValue());
            case 2:
                return FlowColumnOverflow.Companion.expandOrCollapseIndicator__jt2gSs$lambda$1$0((dm3) obj2, (FlowLayoutOverflowState) obj);
            default:
                return wy1.a((gz1) obj2, ((Integer) obj).intValue());
        }
    }
}
