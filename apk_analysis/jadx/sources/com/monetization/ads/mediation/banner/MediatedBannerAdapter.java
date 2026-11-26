package com.monetization.ads.mediation.banner;

import android.content.Context;
import com.monetization.ads.mediation.base.MediatedAdRequestError;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class MediatedBannerAdapter extends com.monetization.ads.mediation.base.a {

    public interface MediatedBannerAdapterListener {
        void onAdFailedToLoad(MediatedAdRequestError mediatedAdRequestError);
    }

    public abstract void loadBanner(Context context, MediatedBannerAdapterListener mediatedBannerAdapterListener, Map<String, ? extends Object> map, Map<String, String> map2);

    public abstract void onInvalidate();
}
