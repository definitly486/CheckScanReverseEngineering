package defpackage;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.TopAppBarState;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ko implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ko(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return AppBarKt.settleAppBar$lambda$55((TopAppBarState) obj2, (AnimationScope) obj);
            default:
                return WorkSpecDao_Impl.incrementPeriodCount$lambda$40("UPDATE workspec SET period_count=period_count+1 WHERE id=?", (String) obj2, (SQLiteConnection) obj);
        }
    }
}
