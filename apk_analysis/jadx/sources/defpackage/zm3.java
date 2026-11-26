package defpackage;

import androidx.arch.core.util.Function;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.paging.ItemKeyedDataSource;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zm3 implements CallbackToFutureAdapter.Resolver, Function, xl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zm3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 1:
                return ItemKeyedDataSource.map$lambda$1((nl3) obj2, (List) obj);
            default:
                return (us5) ((rs5) obj2).invoke(obj);
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return Futures.lambda$transformAsyncOnCompletion$8((ListenableFuture) this.c, completer);
    }
}
