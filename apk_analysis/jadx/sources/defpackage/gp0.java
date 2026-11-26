package defpackage;

import com.google.firebase.remoteconfig.internal.ConfigCacheClient;
import com.google.firebase.remoteconfig.internal.ConfigContainer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class gp0 implements Callable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ gp0(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                hi0<x68<er6>> hi0Var = ((lp0) obj2).f;
                List list = (List) obj;
                ArrayList arrayList = new ArrayList(kn1.q(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((iq6) it.next()).a());
                }
                hi0Var.onNext(new x68.a(arrayList));
                return j59.a;
            default:
                return ((ConfigCacheClient) obj2).lambda$put$0((ConfigContainer) obj);
        }
    }
}
