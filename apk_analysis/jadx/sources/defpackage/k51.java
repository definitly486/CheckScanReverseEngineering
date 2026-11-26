package defpackage;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.carousel.CarouselState;
import java.util.List;
import yads.gf0;
import yads.nq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class k51 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ k51(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        df4<?>[] df4VarArrChildSerializers;
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Integer.valueOf(CarouselState.Saver$lambda$3$lambda$2((List) obj));
            case 1:
                return u96.h((td2.a) obj);
            case 2:
                return Integer.valueOf(((LazyListState) obj).getFirstVisibleItemIndex());
            case 3:
                dp3<?> dp3Var = ((s96) obj).b;
                return (dp3Var == null || (df4VarArrChildSerializers = dp3Var.childSerializers()) == null) ? u96.c : df4VarArrChildSerializers;
            case 4:
                return gf0.o((gf0) obj);
            default:
                return nq0.v((nq0) obj);
        }
    }
}
