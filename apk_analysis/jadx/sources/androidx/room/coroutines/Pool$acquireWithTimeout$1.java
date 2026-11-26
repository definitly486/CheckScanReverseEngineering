package androidx.room.coroutines;

import androidx.media3.muxer.WebmConstants;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.room.coroutines.Pool", f = "ConnectionPoolImpl.kt", l = {WebmConstants.MkvEbmlElement.TIMESTAMP}, m = "acquireWithTimeout-KLykuaI")
public final class Pool$acquireWithTimeout$1 extends f02 {
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Pool this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Pool$acquireWithTimeout$1(Pool pool, e02<? super Pool$acquireWithTimeout$1> e02Var) {
        super(e02Var);
        this.this$0 = pool;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m9360acquireWithTimeoutKLykuaI(0L, null, this);
    }
}
