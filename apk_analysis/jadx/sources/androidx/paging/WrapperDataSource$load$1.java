package androidx.paging;

import androidx.media3.muxer.WebmConstants;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.WrapperDataSource", f = "WrapperDataSource.jvmAndAndroid.kt", l = {WebmConstants.MAX_META_SEEK_SIZE}, m = "load$suspendImpl", v = 1)
public final class WrapperDataSource$load$1<Key, ValueFrom, ValueTo> extends f02 {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ WrapperDataSource<Key, ValueFrom, ValueTo> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WrapperDataSource$load$1(WrapperDataSource<Key, ValueFrom, ValueTo> wrapperDataSource, e02<? super WrapperDataSource$load$1> e02Var) {
        super(e02Var);
        this.this$0 = wrapperDataSource;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return WrapperDataSource.load$suspendImpl(this.this$0, null, this);
    }
}
