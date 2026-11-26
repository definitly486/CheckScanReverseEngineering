package defpackage;

import androidx.compose.material3.SwipeToDismissBoxState;
import androidx.compose.runtime.saveable.SaverScope;
import yads.b30;
import yads.l20;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xg8 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ xg8(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return SwipeToDismissBoxState.Companion.Saver$lambda$0((SaverScope) obj, (SwipeToDismissBoxState) obj2);
            default:
                return b30.a((l20) obj, ((Double) obj2).doubleValue());
        }
    }
}
