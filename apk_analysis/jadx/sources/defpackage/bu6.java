package defpackage;

import androidx.collection.LongSparseArray;
import androidx.sqlite.SQLiteConnection;
import yads.hd3;
import yads.iu3;
import yads.jv1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class bu6 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ bu6(int i, Object obj, Object obj2) {
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
                ((ku6) obj3).l((SQLiteConnection) obj2, (LongSparseArray) obj);
                return j59.a;
            default:
                return jv1.a((nl3) obj3, (iu3) obj2, (hd3) obj);
        }
    }
}
