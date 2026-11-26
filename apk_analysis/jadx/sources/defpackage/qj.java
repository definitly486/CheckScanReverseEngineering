package defpackage;

import androidx.compose.material.ripple.AndroidRippleNode;
import androidx.room.InvalidationTracker;
import yads.nq0;
import yads.x73;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class qj implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ qj(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return AndroidRippleNode.addRipple_12SF9DM$lambda$0$0$0((AndroidRippleNode) obj);
            case 1:
                return InvalidationTracker.onRefreshScheduled$lambda$0((InvalidationTracker) obj);
            case 2:
                return nq0.r((nq0) obj);
            default:
                return x73.c((x73) obj);
        }
    }
}
