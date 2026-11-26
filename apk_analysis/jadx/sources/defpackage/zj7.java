package defpackage;

import androidx.compose.material3.SearchBarKt;
import androidx.compose.material3.SearchBarState;
import yads.fs2;
import yads.hm1;
import yads.jk1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zj7 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ zj7(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return SearchBarKt.ExpandedFullScreenSearchBar__UtchM0$lambda$8$lambda$7((y22) obj2, (SearchBarState) obj);
            default:
                return Boolean.valueOf(jk1.a((hm1) obj2, (fs2) obj));
        }
    }
}
