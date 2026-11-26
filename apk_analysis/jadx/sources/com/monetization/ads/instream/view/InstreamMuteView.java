package com.monetization.ads.instream.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.yandex.mobile.ads.R$dimen;
import com.yandex.mobile.ads.R$drawable;
import com.yandex.mobile.ads.R$string;
import com.yandex.mobile.ads.R$styleable;
import defpackage.jh2;
import yads.ld4;
import yads.si6;

/* JADX INFO: loaded from: classes6.dex */
public final class InstreamMuteView extends AppCompatImageView {
    private final si6 a;
    private boolean b;

    public InstreamMuteView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MonetizationAdsInternalInstreamMuteView);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MonetizationAdsInternalInstreamMuteView_monetization_internal_sound_on, R$drawable.monetization_ads_internal_ic_sound_on_default);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MonetizationAdsInternalInstreamMuteView_monetization_internal_sound_off, R$drawable.monetization_ads_internal_ic_sound_off_default);
        int i2 = R$string.monetization_ads_internal_instream_muted;
        int i3 = R$string.monetization_ads_internal_instream_unmuted;
        typedArrayObtainStyledAttributes.recycle();
        this.a = new si6(new ld4(resourceId2, resourceId, i2, i3));
        setMuted(this.b);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int i2) {
        Resources resources = getResources();
        setMeasuredDimension(resources.getDimensionPixelSize(R$dimen.monetization_instream_internal_mute_width_v2), resources.getDimensionPixelSize(R$dimen.monetization_instream_internal_mute_height_v2));
    }

    public void setMuted(boolean z) {
        this.b = z;
        this.a.a(this, z);
    }

    public InstreamMuteView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ InstreamMuteView(Context context, AttributeSet attributeSet, int i, int i2, jh2 jh2Var) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public InstreamMuteView(Context context) {
        this(context, null, 0, 6, null);
    }
}
