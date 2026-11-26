package com.yandex.mobile.ads.instream.player.ad;

import android.content.Context;
import android.util.AttributeSet;
import yads.dj3;
import yads.po6;
import yads.t05;

/* JADX INFO: loaded from: classes6.dex */
public final class InstreamAdView extends t05 {
    public InstreamAdView(Context context) {
        super(context);
    }

    @Override // yads.t05
    public void privateSetViewBinderProvider(dj3 dj3Var) {
        setAdUiElementsProvider(dj3Var != null ? new po6() : null);
    }

    public InstreamAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public InstreamAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
