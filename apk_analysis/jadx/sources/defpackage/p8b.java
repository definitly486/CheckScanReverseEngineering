package defpackage;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import java.lang.ref.ReferenceQueue;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class p8b implements ComponentFactory {
    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        el1 el1Var = new el1();
        jka jkaVar = new jka(1);
        final ReferenceQueue referenceQueue = el1Var.a;
        final Set set = el1Var.b;
        set.add(new d3b(el1Var, referenceQueue, set, jkaVar));
        Thread thread = new Thread(new Runnable() { // from class: wva
            @Override // java.lang.Runnable
            public final void run() {
                ReferenceQueue referenceQueue2 = referenceQueue;
                while (!set.isEmpty()) {
                    try {
                        d3b d3bVar = (d3b) referenceQueue2.remove();
                        if (d3bVar.a.remove(d3bVar)) {
                            d3bVar.clear();
                        }
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }, "MlKitCleaner");
        thread.setDaemon(true);
        thread.start();
        return el1Var;
    }
}
