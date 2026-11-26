package yads;

import android.content.Context;
import com.monetization.ads.mediation.rewarded.MediatedRewardedAdapter;
import com.monetization.ads.mediation.rewarded.MediatedRewardedAdapterListener;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class z44 implements v24 {
    public MediatedRewardedAdapter a;

    @Override // yads.v24
    public final void a(Context context, Object obj, Object obj2, Map map, Map map2) {
        MediatedRewardedAdapter mediatedRewardedAdapter = (MediatedRewardedAdapter) obj;
        this.a = mediatedRewardedAdapter;
        mediatedRewardedAdapter.loadRewardedAd(context, (MediatedRewardedAdapterListener) obj2, map, map2);
    }

    @Override // yads.v24
    public final void a(com.monetization.ads.mediation.base.a aVar) {
        ((MediatedRewardedAdapter) aVar).onInvalidate();
    }
}
