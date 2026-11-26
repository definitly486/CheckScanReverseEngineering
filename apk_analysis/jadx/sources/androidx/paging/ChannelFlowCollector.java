package androidx.paging;

import defpackage.a32;
import defpackage.e02;
import defpackage.id3;
import defpackage.j59;
import defpackage.no7;

/* JADX INFO: loaded from: classes3.dex */
public final class ChannelFlowCollector<T> implements id3<T> {
    private final no7<T> channel;

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowCollector(no7<? super T> no7Var) {
        no7Var.getClass();
        this.channel = no7Var;
    }

    @Override // defpackage.id3
    public Object emit(T t, e02<? super j59> e02Var) {
        Object objSend = this.channel.send(t, e02Var);
        return objSend == a32.COROUTINE_SUSPENDED ? objSend : j59.a;
    }

    public final no7<T> getChannel() {
        return this.channel;
    }
}
