package com.monetization.ads.mediation.appopenad;

import android.content.Context;
import java.util.Map;
import yads.v24;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements v24 {
    public MediatedAppOpenAdAdapter a;

    @Override // yads.v24
    public final void a(Context context, Object obj, Object obj2, Map map, Map map2) {
        MediatedAppOpenAdAdapter mediatedAppOpenAdAdapter = (MediatedAppOpenAdAdapter) obj;
        this.a = mediatedAppOpenAdAdapter;
        mediatedAppOpenAdAdapter.loadAppOpenAd(context, (MediatedAppOpenAdAdapter.MediatedAppOpenAdAdapterListener) obj2, map, map2);
    }

    @Override // yads.v24
    public final void a(com.monetization.ads.mediation.base.a aVar) {
        ((MediatedAppOpenAdAdapter) aVar).onInvalidate();
    }
}
