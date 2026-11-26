package defpackage;

import io.grpc.j;
import java.util.ArrayList;
import java.util.Collections;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ds4 implements kd8 {
    @Override // defpackage.kd8
    /* JADX INFO: renamed from: get */
    public final Object get2() {
        Logger logger = j.c;
        ArrayList arrayList = new ArrayList();
        try {
            boolean z = f86.b;
            arrayList.add(f86.class);
        } catch (ClassNotFoundException e) {
            logger.log(Level.WARNING, "Unable to find pick-first LoadBalancer", (Throwable) e);
        }
        try {
            int i = vk7.b;
            arrayList.add(vk7.class);
        } catch (ClassNotFoundException e2) {
            logger.log(Level.FINE, "Unable to find round-robin LoadBalancer", (Throwable) e2);
        }
        return Collections.unmodifiableList(arrayList);
    }
}
