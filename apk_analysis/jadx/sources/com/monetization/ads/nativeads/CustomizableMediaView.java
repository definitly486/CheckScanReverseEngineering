package com.monetization.ads.nativeads;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.yandex.mobile.ads.R$layout;
import com.yandex.mobile.ads.R$styleable;
import defpackage.k72;
import defpackage.yr;
import yads.bg5;
import yads.eg5;
import yads.gc0;
import yads.ql5;
import yads.se6;
import yads.te6;
import yads.vl;

/* JADX INFO: loaded from: classes6.dex */
public class CustomizableMediaView extends FrameLayout {
    private static final int f = R$layout.monetization_ads_internal_outstream_controls_default;
    private int a;
    private int b;
    private int c;
    private final se6 d;
    private gc0 e;

    public CustomizableMediaView(Context context, AttributeSet attributeSet, int i, te6 te6Var) {
        super(context, attributeSet, i);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MonetizationAdsInternalMediaView);
            te6Var.getClass();
            this.a = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MonetizationAdsInternalMediaView_monetization_internal_video_controls_layout, f);
            this.d = (se6) yr.O(typedArrayObtainStyledAttributes.getInt(R$styleable.MonetizationAdsInternalMediaView_monetization_internal_video_scale_type, -1), se6.values());
            typedArrayObtainStyledAttributes.recycle();
        } else {
            this.a = f;
            this.d = null;
        }
        addOnAttachStateChangeListener(new vl(new k72(this, 0)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(CustomizableMediaView customizableMediaView) {
        gc0 gc0Var = customizableMediaView.e;
        if (gc0Var != null) {
            int width = customizableMediaView.getWidth();
            int height = customizableMediaView.getHeight();
            eg5 eg5Var = (eg5) ((bg5) gc0Var).a.get();
            if (eg5Var != null) {
                ql5 ql5Var = eg5Var.f;
                if (width < ql5Var.b || height < ql5Var.c) {
                    eg5Var.i.setValue(eg5Var, eg5.k[2], eg5Var.e);
                }
            }
        }
    }

    public final int getHeightMeasureSpec() {
        return this.c;
    }

    public final gc0 getOnSizeChangedListener$mobileads_externalRelease() {
        return this.e;
    }

    public final int getVideoControlsLayoutId() {
        return this.a;
    }

    public final se6 getVideoScaleType() {
        return this.d;
    }

    public final int getWidthMeasureSpec() {
        return this.b;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.b = i;
        this.c = i2;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        eg5 eg5Var;
        super.onSizeChanged(i, i2, i3, i4);
        gc0 gc0Var = this.e;
        if (gc0Var == null || (eg5Var = (eg5) ((bg5) gc0Var).a.get()) == null) {
            return;
        }
        ql5 ql5Var = eg5Var.f;
        if (i < ql5Var.b || i2 < ql5Var.c) {
            eg5Var.i.setValue(eg5Var, eg5.k[2], eg5Var.e);
        }
    }

    public final void setOnSizeChangedListener$mobileads_externalRelease(gc0 gc0Var) {
        this.e = gc0Var;
    }

    public final void a(int i) {
        this.a = i;
    }

    public CustomizableMediaView(Context context) {
        this(context, null);
    }

    public CustomizableMediaView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CustomizableMediaView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, new te6());
    }
}
