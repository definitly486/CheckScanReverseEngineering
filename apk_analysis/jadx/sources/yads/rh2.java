package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import androidx.lifecycle.LifecycleOwner;
import com.yandex.mobile.ads.R$style;

/* JADX INFO: loaded from: classes6.dex */
public final class rh2 {
    public static vq0 a(Context context, c81 c81Var, LifecycleOwner lifecycleOwner, String str) {
        vq0 vq0Var = new vq0(new pq0(new ContextThemeWrapper(context, R$style.monetization_ads_divkit_Div), c81Var, lifecycleOwner), (AttributeSet) null, 6);
        vq0Var.setTag(str);
        return vq0Var;
    }
}
