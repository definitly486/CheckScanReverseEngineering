package defpackage;

import androidx.compose.foundation.layout.FlowRowOverflowScopeImpl;
import androidx.room.coroutines.PassthroughConnectionPool;
import yads.gf0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bg3 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ bg3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Integer.valueOf(FlowRowOverflowScopeImpl.shownItemCount_delegate$lambda$0((FlowRowOverflowScopeImpl) obj));
            case 1:
                return PassthroughConnectionPool.connection$lambda$0((PassthroughConnectionPool) obj);
            default:
                return gf0.e((gf0) obj);
        }
    }
}
