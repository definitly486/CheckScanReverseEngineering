package yads;

import android.view.ViewGroup;
import android.widget.TextView;
import com.monetization.ads.fullscreen.template.view.CallToActionView;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class tx implements on0 {
    public final pg4 a;

    public tx(pg4 pg4Var) {
        this.a = pg4Var;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        TextView textView = (TextView) viewGroup.findViewById(R$id.monetization_ads_call_to_action);
        f95 adType = this.a.getAdType();
        if (!(textView instanceof CallToActionView) || adType == f95.e) {
            return;
        }
        ((CallToActionView) textView).a();
    }

    @Override // yads.on0
    public final void c() {
    }
}
