package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.settings.PushFilter;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class y2 extends B2 {
    public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

    @Override // io.appmetrica.analytics.push.impl.B2
    public final C2 a(PushMessage pushMessage) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            try {
                C2 c2A = ((B2) it.next()).a(pushMessage);
                if (!c2A.a.isShow()) {
                    return c2A;
                }
                pushMessage = c2A.b;
            } catch (A2 e) {
                return B2.a(pushMessage, e.a, e.b);
            }
        }
        return new C2(pushMessage, PushFilter.FilterResult.show());
    }
}
