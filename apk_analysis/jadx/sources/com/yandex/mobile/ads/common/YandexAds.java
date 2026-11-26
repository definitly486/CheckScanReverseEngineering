package com.yandex.mobile.ads.common;

import android.content.Context;
import yads.do6;
import yads.ha4;
import yads.t70;
import yads.um6;

/* JADX INFO: loaded from: classes6.dex */
public final class YandexAds {
    public static final YandexAds INSTANCE = new YandexAds();

    private YandexAds() {
    }

    public static final void initialize(Context context, InitializationListener initializationListener) {
        ha4.a(context, new do6(context), (t70) new um6(initializationListener));
    }
}
