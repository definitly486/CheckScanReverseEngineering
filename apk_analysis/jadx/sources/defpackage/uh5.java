package defpackage;

import io.grpc.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class uh5 implements kd8 {
    @Override // defpackage.kd8
    /* JADX INFO: renamed from: get */
    public final Object get2() {
        Logger logger = n.d;
        ArrayList arrayList = new ArrayList();
        try {
            boolean z = xp2.a;
            arrayList.add(xp2.class);
        } catch (ClassNotFoundException e) {
            logger.log(Level.FINE, "Unable to find DNS NameResolver", (Throwable) e);
        }
        try {
            arrayList.add(Class.forName("io.grpc.binder.internal.IntentNameResolverProvider"));
        } catch (ClassNotFoundException e2) {
            logger.log(Level.FINE, "Unable to find IntentNameResolverProvider", (Throwable) e2);
        }
        return Collections.unmodifiableList(arrayList);
    }
}
