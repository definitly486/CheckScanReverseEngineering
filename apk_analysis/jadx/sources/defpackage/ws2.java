package defpackage;

import androidx.compose.material3.DrawerState;
import androidx.compose.material3.DrawerValue;
import androidx.navigation.NavDestination;
import androidx.navigation.internal.NavGraphImpl;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import yads.c62;
import yads.m62;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ws2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ws2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return DrawerState.Companion.Saver$lambda$1((nl3) obj2, (DrawerValue) obj);
            case 1:
                return NavGraphImpl.setStartDestination$lambda$14(obj2, (NavDestination) obj);
            case 2:
                return WorkSpecDao_Impl.delete$lambda$37("DELETE FROM workspec WHERE id=?", (String) obj2, (SQLiteConnection) obj);
            default:
                return c62.a((m62) obj2, ((Boolean) obj).booleanValue());
        }
    }
}
