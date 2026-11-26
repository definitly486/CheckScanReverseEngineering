package androidx.paging;

import defpackage.e02;
import defpackage.g03;
import defpackage.h03;
import defpackage.j59;

/* JADX INFO: loaded from: classes3.dex */
public interface ActiveFlowTracker {

    public enum FlowType {
        PAGED_DATA_FLOW,
        PAGE_EVENT_FLOW;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<FlowType> getEntries() {
            return $ENTRIES;
        }
    }

    Object onComplete(FlowType flowType, e02<? super j59> e02Var);

    void onNewCachedEventFlow(CachedPageEventFlow<?> cachedPageEventFlow);

    Object onStart(FlowType flowType, e02<? super j59> e02Var);
}
