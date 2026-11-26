package defpackage;

import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.RoomDatabase;
import androidx.room.RxRoom;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.warefly.checkscan.data.db.CheckscanDatabase_Impl;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class jg1 implements wf1 {
    public final CheckscanDatabase_Impl a;
    public final hg1 b = new hg1();
    public final ig1 c = new ig1();

    public jg1(CheckscanDatabase_Impl checkscanDatabase_Impl) {
        this.a = checkscanDatabase_Impl;
    }

    @Override // defpackage.wf1
    public final qp1 b(String str, String str2) {
        return RxRoom.createCompletable(this.a, false, true, new ag1(0, str2, str));
    }

    @Override // defpackage.wf1
    public final hd3<kg1> c(final long j) {
        nl3 nl3Var = new nl3() { // from class: zf1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                long j2 = j;
                SQLiteStatement sQLiteStatementPrepare = ((SQLiteConnection) obj).prepare("SELECT * FROM cheque_requests WHERE id = ?");
                try {
                    sQLiteStatementPrepare.mo9363bindLong(1, j2);
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
            }
        };
        return FlowUtil.createFlow(this.a, false, new String[]{"cheque_requests"}, nl3Var);
    }

    @Override // defpackage.wf1
    public final qp1 d(String str) {
        return RxRoom.createCompletable(this.a, false, true, new xf1(str, 0));
    }

    @Override // defpackage.wf1
    public final qp1 e(kg1... kg1VarArr) {
        return RxRoom.createCompletable(this.a, false, true, new bg1(0, this, kg1VarArr));
    }

    @Override // defpackage.wf1
    public final mz7<List<String>> f() {
        return RxRoom.createSingle(this.a, true, false, new eg1(0));
    }

    @Override // defpackage.wf1
    public final mz7<Long> g(final kg1 kg1Var) {
        return RxRoom.createSingle(this.a, false, true, new nl3() { // from class: dg1
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Long.valueOf(this.b.b.insertAndReturnId((SQLiteConnection) obj, kg1Var));
            }
        });
    }

    @Override // defpackage.wf1
    public final qp1 h() {
        return RxRoom.createCompletable(this.a, false, true, new gg1(0));
    }

    @Override // defpackage.wf1
    public final mz7<kg1> i(String str) {
        return RxRoom.createSingle(this.a, true, false, new fg1(str, 0));
    }

    @Override // defpackage.wf1
    public final qp1 j(final ArrayList arrayList) {
        return RxRoom.createCompletable(this.a, false, true, new nl3() { // from class: yf1
            @Override // defpackage.nl3
            public final Object invoke(Object obj) throws Exception {
                this.b.b.insert((SQLiteConnection) obj, (Iterable) arrayList);
                return j59.a;
            }
        });
    }

    @Override // defpackage.wf1
    public final qp1 k(List<String> list) {
        StringBuilder sbC = ad2.c("DELETE FROM cheque_requests WHERE status = 'CHEQUE_NO_SHOP_RECEIVED' AND qrCode IN (");
        StringUtil.appendPlaceholders(sbC, list.size());
        sbC.append(")");
        return RxRoom.createCompletable(this.a, false, true, new yt0(1, sbC.toString(), list));
    }

    @Override // defpackage.wf1
    public final gg3<List<kg1>> l() {
        mi miVar = new mi(2);
        return RxRoom.createFlowable((RoomDatabase) this.a, true, new String[]{"cheque_requests"}, (nl3) miVar);
    }

    @Override // defpackage.wf1
    public final mz7<List<String>> m() {
        return RxRoom.createSingle(this.a, true, false, new lm(2));
    }

    @Override // defpackage.wf1
    public final mz7<List<kg1>> n() {
        return RxRoom.createSingle(this.a, true, true, new cg1(0));
    }
}
