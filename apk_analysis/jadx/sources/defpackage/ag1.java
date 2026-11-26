package defpackage;

import android.view.View;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.monetization.ads.mediation.appopenad.c;
import yads.jr0;
import yads.kx;
import yads.m24;
import yads.or0;
import yads.ox;
import yads.q74;
import yads.s03;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ag1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ag1(int i, Object obj, Object obj2) {
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
                String str = (String) obj3;
                String str2 = (String) obj2;
                SQLiteStatement sQLiteStatementPrepare = ((SQLiteConnection) obj).prepare("UPDATE cheque_requests SET status = ? WHERE qrCode = ?");
                try {
                    sQLiteStatementPrepare.mo9365bindText(1, str);
                    if (str2 == null) {
                        sQLiteStatementPrepare.mo9364bindNull(2);
                    } else {
                        sQLiteStatementPrepare.mo9365bindText(2, str2);
                    }
                    sQLiteStatementPrepare.step();
                    return j59.a;
                } finally {
                    sQLiteStatementPrepare.close();
                }
            case 1:
                return c.a((s03) obj3, (m24) obj2, (q74) obj);
            case 2:
                return kx.a((ox) obj3, (kx) obj2, (Throwable) obj);
            default:
                return or0.a((or0) obj3, (View) obj2, (jr0) obj);
        }
    }
}
