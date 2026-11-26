package androidx.datastore;

import android.content.Context;
import defpackage.gh4;
import defpackage.j46;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class DataStoreSingletonDelegate$getValue$1$1 extends gh4 implements ll3<j46> {
    final /* synthetic */ Context $applicationContext;
    final /* synthetic */ DataStoreSingletonDelegate<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreSingletonDelegate$getValue$1$1(Context context, DataStoreSingletonDelegate<T> dataStoreSingletonDelegate) {
        super(0);
        this.$applicationContext = context;
        this.this$0 = dataStoreSingletonDelegate;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final j46 invoke() {
        String str = j46.c;
        Context context = this.$applicationContext;
        context.getClass();
        String absolutePath = DataStoreFile.dataStoreFile(context, ((DataStoreSingletonDelegate) this.this$0).fileName).getAbsolutePath();
        absolutePath.getClass();
        return j46.a.a(absolutePath, false);
    }
}
