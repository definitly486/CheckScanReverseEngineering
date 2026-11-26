package defpackage;

import androidx.compose.foundation.lazy.LazyListItemProviderKt;
import androidx.compose.runtime.LinkComposer;
import androidx.compose.runtime.State;
import androidx.room.InvalidationTracker;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import java.util.ArrayList;
import java.util.List;
import yads.nq0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ds1 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ds1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                fs1 fs1Var = (fs1) obj;
                List<? extends ll3<? extends List<? extends b36<? extends u83.a<? extends Object>, ? extends ne4<? extends Object>>>>> list = fs1Var.d;
                ArrayList arrayList = new ArrayList();
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    nn1.s(list.get(i2).invoke(), arrayList);
                }
                fs1Var.d = kx2.b;
                return arrayList;
            case 1:
                return FrameworkSQLiteOpenHelper.lazyDelegate$lambda$0((FrameworkSQLiteOpenHelper) obj);
            case 2:
                return InvalidationTracker.onRefreshCompleted$lambda$1((InvalidationTracker) obj);
            case 3:
                return LazyListItemProviderKt.rememberLazyListItemProviderLambda$lambda$0$0((State) obj);
            case 4:
                return ((LinkComposer) obj).currentStackTrace();
            default:
                return nq0.o((nq0) obj);
        }
    }
}
