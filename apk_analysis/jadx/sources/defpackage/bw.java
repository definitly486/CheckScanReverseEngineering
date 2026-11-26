package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class bw extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bw(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((kv) obj2).f.d();
                break;
            default:
                ((View) obj).getClass();
                ((OnlineShopsFragment) obj2).o().onBackPressed();
                break;
        }
        return j59.a;
    }
}
