package androidx.datastore.core;

import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class DataStoreImpl$coordinator$2 extends gh4 implements ll3<InterProcessCoordinator> {
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$coordinator$2(DataStoreImpl<T> dataStoreImpl) {
        super(0);
        this.this$0 = dataStoreImpl;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final InterProcessCoordinator invoke() {
        return this.this$0.getStorageConnection$datastore_core_release().getCoordinator();
    }
}
