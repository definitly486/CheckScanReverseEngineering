package defpackage;

import androidx.compose.foundation.pager.PagerState;
import yads.c26;
import yads.u66;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g26 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ g26(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Float.valueOf(((PagerState) obj2).performScroll(((Float) obj).floatValue()));
            default:
                return c26.a((c26) obj2, (u66) obj);
        }
    }
}
