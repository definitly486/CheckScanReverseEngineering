package defpackage;

import com.google.android.gms.dynamic.DeferredLifecycleHelper;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.OnDelegateCreatedListener;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class qia implements OnDelegateCreatedListener {
    public final /* synthetic */ DeferredLifecycleHelper a;

    public qia(DeferredLifecycleHelper deferredLifecycleHelper) {
        this.a = deferredLifecycleHelper;
    }

    @Override // com.google.android.gms.dynamic.OnDelegateCreatedListener
    public final void onDelegateCreated(LifecycleDelegate lifecycleDelegate) {
        DeferredLifecycleHelper deferredLifecycleHelper = this.a;
        deferredLifecycleHelper.a = lifecycleDelegate;
        Iterator it = deferredLifecycleHelper.c.iterator();
        while (it.hasNext()) {
            ((gla) it.next()).zab();
        }
        deferredLifecycleHelper.c.clear();
        deferredLifecycleHelper.b = null;
    }
}
