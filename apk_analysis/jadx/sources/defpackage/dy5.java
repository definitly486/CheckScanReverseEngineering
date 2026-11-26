package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class dy5 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ OnlineShopsFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dy5(OnlineShopsFragment onlineShopsFragment) {
        super(1);
        this.f = onlineShopsFragment;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.o().onFiltersClicked();
        return j59.a;
    }
}
