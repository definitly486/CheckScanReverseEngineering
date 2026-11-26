package defpackage;

import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.utils.StatusRunnable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ff6 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ String c;

    public /* synthetic */ ff6(String str, int i) {
        this.b = i;
        this.c = str;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        String str = this.c;
        switch (i) {
            case 0:
                return PreferenceDao_Impl.getObservableLongValue$lambda$2("SELECT long_value FROM Preference where `key`=?", str, (SQLiteConnection) obj);
            default:
                return StatusRunnable.forTag$lambda$2(str, (WorkDatabase) obj);
        }
    }
}
