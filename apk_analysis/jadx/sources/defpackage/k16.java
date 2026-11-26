package defpackage;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k16 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ k16(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return PaddingKt.padding$lambda$0((PaddingValues) obj2, (InspectorInfo) obj);
            default:
                return WorkSpecDao_Impl.getScheduleRequestedAtLiveData$lambda$23("SELECT schedule_requested_at FROM workspec WHERE id=?", (String) obj2, (SQLiteConnection) obj);
        }
    }
}
