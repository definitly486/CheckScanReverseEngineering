package defpackage;

import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ih8 implements nl3 {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ int c;
    public final /* synthetic */ String d;

    public /* synthetic */ ih8(int i, String str) {
        this.c = i;
        this.d = str;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        String str = this.d;
        int i2 = this.c;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                return SystemIdInfoDao_Impl.removeSystemIdInfo$lambda$3("DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?", str, i2, sQLiteConnection);
            default:
                return WorkSpecDao_Impl.setStopReason$lambda$51("UPDATE workspec SET stop_reason=? WHERE id=?", i2, str, sQLiteConnection);
        }
    }

    public /* synthetic */ ih8(String str, int i) {
        this.d = str;
        this.c = i;
    }
}
