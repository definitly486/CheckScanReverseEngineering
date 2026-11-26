package yads;

import android.view.ViewGroup;
import com.monetization.ads.fullscreen.template.view.ExtendedViewContainer;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class q04 implements on0 {
    public final dy3 a;

    public q04(f80 f80Var) {
        this.a = new dy3(f80Var);
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        ExtendedViewContainer extendedViewContainer = (ExtendedViewContainer) viewGroup.findViewById(R$id.monetization_ads_media_container);
        Float fA = this.a.a();
        if (extendedViewContainer == null || fA == null) {
            return;
        }
        extendedViewContainer.setMeasureSpecProvider(d50.a(new l25(Math.min(Math.max(fA.floatValue(), 1.0f), 1.7777778f)), new rx3(viewGroup, 0.5f)));
    }

    @Override // yads.on0
    public final void c() {
    }
}
