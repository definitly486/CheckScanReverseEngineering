package defpackage;

import androidx.compose.foundation.lazy.LazyListState;
import yads.sx5;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class on4 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ on4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Float.valueOf(LazyListState.scrollableState$lambda$0((LazyListState) obj2, ((Float) obj).floatValue()));
            default:
                return sx5.a((sx5) obj2, ((Long) obj).longValue());
        }
    }
}
