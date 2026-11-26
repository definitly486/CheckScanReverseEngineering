package androidx.paging;

import defpackage.e02;
import defpackage.y68;

/* JADX INFO: loaded from: classes3.dex */
public interface RemoteMediatorAccessor<Key, Value> extends RemoteMediatorConnection<Key, Value> {
    y68<LoadStates> getState();

    Object initialize(e02<? super RemoteMediator.InitializeAction> e02Var);
}
