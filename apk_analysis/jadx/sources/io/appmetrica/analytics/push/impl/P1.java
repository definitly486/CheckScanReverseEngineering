package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.settings.PushFilter;
import io.appmetrica.analytics.push.settings.PushFilteredCallback;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class P1 implements PushFilter {
    public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();
    public final ArrayList b = new ArrayList();

    @Override // io.appmetrica.analytics.push.settings.PushFilter
    public final PushFilter.FilterResult filter(PushMessage pushMessage) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            PushFilter.FilterResult filterResultFilter = ((PushFilter) it.next()).filter(pushMessage);
            if (filterResultFilter.filterResultCode == PushFilter.FilterResultCode.SILENCE) {
                Iterator it2 = this.b.iterator();
                while (it2.hasNext()) {
                    ((PushFilteredCallback) it2.next()).onPushFiltered(pushMessage, filterResultFilter);
                }
                return filterResultFilter;
            }
        }
        PushFilter.FilterResult filterResultShow = PushFilter.FilterResult.show();
        Iterator it3 = this.b.iterator();
        while (it3.hasNext()) {
            ((PushFilteredCallback) it3.next()).onPushFiltered(pushMessage, filterResultShow);
        }
        return filterResultShow;
    }
}
