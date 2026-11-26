package defpackage;

import androidx.collection.ArrayMap;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadStates;
import androidx.paging.MutableCombinedLoadStateCollection;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class og5 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ og5(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return MutableCombinedLoadStateCollection.set$lambda$0((LoadStates) obj3, (LoadStates) obj2, (CombinedLoadStates) obj);
            default:
                return WorkSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData$lambda$53((WorkSpecDao_Impl) obj3, (SQLiteConnection) obj2, (ArrayMap) obj);
        }
    }
}
