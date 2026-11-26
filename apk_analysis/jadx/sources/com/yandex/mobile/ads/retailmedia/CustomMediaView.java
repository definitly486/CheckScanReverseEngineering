package com.yandex.mobile.ads.retailmedia;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.monetization.ads.nativeads.CustomizableMediaView;
import com.yandex.mobile.ads.nativeads.MediaView;

/* JADX INFO: loaded from: classes5.dex */
public final class CustomMediaView extends FrameLayout {
    private MediaView a;

    public CustomMediaView(Context context) {
        super(context);
    }

    public final CustomizableMediaView getNativeMediaView$mobileads_externalRelease() {
        return this.a;
    }

    public CustomMediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CustomMediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
