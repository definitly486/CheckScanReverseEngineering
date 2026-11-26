package defpackage;

import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.DelayKt", f = "Delay.kt", l = {WebmConstants.MkvEbmlElement.BLOCK_GROUP}, m = "awaitCancellation", v = 1)
public final class xk2 extends f02 {
    public /* synthetic */ Object l;
    public int m;

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.m |= Integer.MIN_VALUE;
        return yk2.a(this);
    }
}
