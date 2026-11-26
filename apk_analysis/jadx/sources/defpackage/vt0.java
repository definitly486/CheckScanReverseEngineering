package defpackage;

import com.warefly.checkscan.presentation.brandlink.view.BrandlinkView$$State;
import com.warefly.checkscan.presentation.favorite.presenter.FavoriteView$$State;
import com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class vt0 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ vt0(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new BrandlinkView$$State();
            case 1:
                return new DesktopView$$State();
            default:
                return new FavoriteView$$State();
        }
    }
}
