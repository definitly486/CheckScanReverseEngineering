package yads;

import android.content.Context;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import com.yandex.mobile.ads.R$drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class z65 {
    public final Button a(Context context) {
        Button button = new Button(context);
        button.setBackground(ContextCompat.getDrawable(context, R$drawable.monetization_ads_video_ic_replay));
        int iA = ip0.a(context, 90.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iA, iA);
        layoutParams.gravity = 17;
        button.setLayoutParams(layoutParams);
        return button;
    }
}
