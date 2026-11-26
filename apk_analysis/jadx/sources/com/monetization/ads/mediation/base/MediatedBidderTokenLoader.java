package com.monetization.ads.mediation.base;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public interface MediatedBidderTokenLoader {
    void loadBidderToken(Context context, Map<String, String> map, MediatedBidderTokenLoadListener mediatedBidderTokenLoadListener);
}
