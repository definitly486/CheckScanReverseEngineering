package yads;

import android.widget.FrameLayout;
import android.widget.ImageView;
import com.monetization.ads.nativeads.CustomizableMediaView;

/* JADX INFO: loaded from: classes6.dex */
public final class c24 {
    public final d9 a;

    public c24(d9 d9Var) {
        this.a = d9Var;
    }

    public final wf5 a(CustomizableMediaView customizableMediaView, b05 b05Var, j24 j24Var, defpackage.y22 y22Var) {
        ImageView imageView = new ImageView(customizableMediaView.getContext());
        if (!yt2.a(customizableMediaView.getContext(), xt2.FALLBACK_FOR_VIDEO)) {
            customizableMediaView.removeAllViews();
        }
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        customizableMediaView.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
        return new wf5(customizableMediaView, new be3(imageView, b05Var, this.a, y22Var), j24Var);
    }
}
