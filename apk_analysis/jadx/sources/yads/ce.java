package yads;

import android.view.View;
import android.view.ViewGroup;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class ce implements on0 {
    public final f80 a;

    public ce(f80 f80Var) {
        this.a = f80Var;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        View viewFindViewById = viewGroup.findViewById(R$id.monetization_ads_age_divider);
        if (viewFindViewById == null || this.a.f != null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    @Override // yads.on0
    public final void c() {
    }
}
