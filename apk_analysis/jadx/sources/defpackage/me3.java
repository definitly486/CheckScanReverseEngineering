package defpackage;

import androidx.media3.extractor.ts.TsExtractor;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "kotlinx.coroutines.flow.FlowKt__LimitKt", f = "Limit.kt", l = {TsExtractor.TS_SYNC_BYTE}, m = "emitAbort$FlowKt__LimitKt", v = 1)
public final class me3<T> extends f02 {
    public Object l;
    public /* synthetic */ Object m;
    public int n;

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.n |= Integer.MIN_VALUE;
        return km1.b(null, null, null, this);
    }
}
