package yads;

import android.view.ViewGroup;
import com.monetization.ads.fullscreen.template.view.ExtendedViewContainer;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class qz3 implements on0 {
    public final f80 a;

    public qz3(f80 f80Var) {
        this.a = f80Var;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        ExtendedViewContainer extendedViewContainer = (ExtendedViewContainer) viewGroup.findViewById(R$id.monetization_ads_media_container);
        if (extendedViewContainer != null) {
            f80 f80Var = this.a;
            if (f80Var.d == null && f80Var.a == null) {
                extendedViewContainer.setVisibility(8);
            }
        }
    }

    @Override // yads.on0
    public final void c() {
    }
}
