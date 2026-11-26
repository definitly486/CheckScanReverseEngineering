package defpackage;

import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.material3.DrawerValue;
import androidx.compose.material3.NavigationDrawerKt;
import java.util.List;
import yads.hs1;
import yads.q52;
import yads.vg2;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class em4 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ em4(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return LazyGridState.Saver$lambda$1((List) obj);
            case 1:
                return Boolean.valueOf(NavigationDrawerKt.rememberDrawerState$lambda$1$lambda$0((DrawerValue) obj));
            case 2:
                return Boolean.valueOf(hs1.d(obj));
            case 3:
                return Boolean.valueOf(q52.c(obj));
            default:
                return Boolean.valueOf(vg2.a(obj));
        }
    }
}
