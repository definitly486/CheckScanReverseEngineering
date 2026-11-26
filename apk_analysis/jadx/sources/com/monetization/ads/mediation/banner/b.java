package com.monetization.ads.mediation.banner;

import android.content.Context;
import java.util.Map;
import yads.v24;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements v24 {
    @Override // yads.v24
    public final void a(Context context, Object obj, Object obj2, Map map, Map map2) {
        ((MediatedBannerAdapter) obj).loadBanner(context, (MediatedBannerAdapter.MediatedBannerAdapterListener) obj2, map, map2);
    }

    @Override // yads.v24
    public final void a(com.monetization.ads.mediation.base.a aVar) {
        ((MediatedBannerAdapter) aVar).onInvalidate();
    }
}
