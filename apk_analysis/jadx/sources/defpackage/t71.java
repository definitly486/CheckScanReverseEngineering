package defpackage;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import yads.e91;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class t71 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ t71(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                SQLiteStatement sQLiteStatementPrepare = ((SQLiteConnection) obj).prepare("DELETE FROM product_categories");
                try {
                    sQLiteStatementPrepare.step();
                    return null;
                } finally {
                    sQLiteStatementPrepare.close();
                }
            case 1:
                nb6 nb6Var = (nb6) obj;
                nb6Var.getClass();
                nb6Var.n.getClass();
                return 50;
            case 2:
                char cCharValue = ((Character) obj).charValue();
                boolean z = false;
                if ('0' <= cCharValue && cCharValue < ':') {
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                return Boolean.valueOf(e91.e(obj));
        }
    }
}
