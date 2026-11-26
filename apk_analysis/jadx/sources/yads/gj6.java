package yads;

import android.view.ViewGroup;
import android.widget.TextView;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class gj6 implements on0 {
    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        TextView textView = (TextView) viewGroup.findViewById(R$id.monetization_ads_warning);
        if (textView != null) {
            textView.setSelected(true);
        }
    }

    @Override // yads.on0
    public final void c() {
    }
}
