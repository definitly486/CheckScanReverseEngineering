package yads;

import android.view.ViewGroup;
import com.monetization.ads.fullscreen.template.view.ExtendedViewContainer;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class cy3 implements on0 {
    public final dy3 a;

    public cy3(f80 f80Var) {
        this.a = new dy3(f80Var);
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        ExtendedViewContainer extendedViewContainer = (ExtendedViewContainer) viewGroup.findViewById(R$id.monetization_ads_media_container);
        Float fA = this.a.a();
        if (extendedViewContainer == null || fA == null) {
            return;
        }
        extendedViewContainer.setMeasureSpecProvider(new l25(fA.floatValue()));
    }

    @Override // yads.on0
    public final void c() {
    }
}
