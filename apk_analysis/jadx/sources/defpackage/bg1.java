package defpackage;

import android.view.View;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.internal.MutableWindowInsets;
import androidx.sqlite.SQLiteConnection;
import yads.tq;
import yads.tt;
import yads.w41;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class bg1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ bg1(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) throws Exception {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                ig1 ig1Var = ((jg1) obj3).c;
                ig1Var.handleMultiple((SQLiteConnection) obj, (kg1[]) obj2);
                return j59.a;
            case 1:
                return ScaffoldKt.Scaffold_TvnljyQ$lambda$2$lambda$1((MutableWindowInsets) obj3, (WindowInsets) obj2, (WindowInsets) obj);
            default:
                return Boolean.valueOf(tq.b((w41) obj3, (tt) obj2, (View) obj));
        }
    }
}
