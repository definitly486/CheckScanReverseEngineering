package defpackage;

import androidx.camera.core.SurfaceRequest;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.my.target.z1;
import java.util.concurrent.atomic.AtomicReference;
import yads.cj0;
import yads.ji0;
import yads.ne;
import yads.pe;
import yads.tt3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ig8 implements CallbackToFutureAdapter.Resolver, tt3, gv9 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ig8(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return SurfaceRequest.lambda$new$1((AtomicReference) this.b, (String) this.c, completer);
    }

    @Override // defpackage.gv9
    public void b() {
        z1 z1Var = (z1) this.b;
        z1Var.c.b((xda) this.c);
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        cj0.c((ne) this.b, (ji0) this.c, (pe) obj);
    }
}
