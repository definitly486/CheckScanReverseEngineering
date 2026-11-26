package defpackage;

import androidx.compose.material3.NavigationBarKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.ui.unit.IntSize;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import yads.ig6;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gj5 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ gj5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return NavigationBarKt.NavigationBarItem$lambda$8$lambda$7((MutableIntState) obj2, (IntSize) obj);
            case 1:
                return WorkSpecDao_Impl.incrementGeneration$lambda$50("UPDATE workspec SET generation=generation+1 WHERE id=?", (String) obj2, (SQLiteConnection) obj);
            default:
                return ig6.a((ig6) obj2, (String) obj);
        }
    }
}
