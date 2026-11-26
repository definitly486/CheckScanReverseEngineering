package com.monetization.ads.mediation.appopenad;

import android.app.Activity;
import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class MediatedAppOpenAdAdapter extends com.monetization.ads.mediation.base.a {

    public interface MediatedAppOpenAdAdapterListener {
    }

    public abstract void loadAppOpenAd(Context context, MediatedAppOpenAdAdapterListener mediatedAppOpenAdAdapterListener, Map<String, ? extends Object> map, Map<String, String> map2);

    public abstract void onInvalidate();

    public abstract void showAppOpenAd(Activity activity);
}
