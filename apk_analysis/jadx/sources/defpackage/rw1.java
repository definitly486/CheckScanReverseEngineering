package defpackage;

import androidx.sqlite.SQLiteDriver;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class rw1 implements ll3 {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ String c;
    public final /* synthetic */ Object d;

    public /* synthetic */ rw1(SQLiteDriver sQLiteDriver, String str) {
        this.d = sQLiteDriver;
        this.c = str;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.d;
        String str = this.c;
        switch (i) {
            case 0:
                return ((SQLiteDriver) obj).open(str);
            default:
                return rp7.e(str, eb8.d.a, new mp7[0], new qq5((rq5) obj, 0));
        }
    }

    public /* synthetic */ rw1(String str, rq5 rq5Var) {
        this.c = str;
        this.d = rq5Var;
    }
}
