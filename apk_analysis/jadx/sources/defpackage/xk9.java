package defpackage;

import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import java.util.List;
import yads.ds;
import yads.pp;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class xk9 implements nl3 {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ String c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ xk9(String str, List list, WorkSpecDao_Impl workSpecDao_Impl) {
        this.c = str;
        this.d = list;
        this.e = workSpecDao_Impl;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.e;
        String str = this.c;
        Object obj3 = this.d;
        switch (i) {
            case 0:
                return WorkSpecDao_Impl.getWorkStatusPojoLiveDataForIds$lambda$10(str, (List) obj3, (WorkSpecDao_Impl) obj2, (SQLiteConnection) obj);
            default:
                return pp.a((pp) obj3, str, (String) obj2, (ds) obj);
        }
    }

    public /* synthetic */ xk9(pp ppVar, String str, String str2) {
        this.d = ppVar;
        this.c = str;
        this.e = str2;
    }
}
