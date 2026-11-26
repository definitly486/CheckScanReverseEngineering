package androidx.paging;

import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
public final class RemoteMediatorAccessorKt {
    public static final <Key, Value> RemoteMediatorAccessor<Key, Value> RemoteMediatorAccessor(y22 y22Var, RemoteMediator<Key, Value> remoteMediator) {
        y22Var.getClass();
        remoteMediator.getClass();
        return new RemoteMediatorAccessImpl(y22Var, remoteMediator);
    }
}
