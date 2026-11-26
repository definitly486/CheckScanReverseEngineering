package defpackage;

import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.sqlite.SQLiteConnection;
import androidx.work.WorkQuery;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.utils.StatusRunnable;
import yads.ph1;
import yads.sx5;
import yads.uh1;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class gf6 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ gf6(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return PreferenceDao_Impl.getLongValue$lambda$1("SELECT long_value FROM Preference where `key`=?", (String) obj2, (SQLiteConnection) obj);
            case 1:
                return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$7$lambda$6((ll3) obj2, (SemanticsPropertyReceiver) obj);
            case 2:
                return StatusRunnable.forWorkQuerySpec$lambda$4((WorkQuery) obj2, (WorkDatabase) obj);
            case 3:
                return ph1.a((uh1) obj2, ((Long) obj).longValue());
            default:
                return sx5.b((sx5) obj2, ((Long) obj).longValue());
        }
    }
}
