package yads;

import android.content.Context;
import com.monetization.ads.mediation.banner.MediatedBannerAdapter;
import com.monetization.ads.mediation.base.MediatedAdRequestError;
import com.monetization.ads.mediation.base.MediatedAdapterInfo;
import com.monetization.ads.mediation.base.model.MediatedAdObject;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdapter;
import defpackage.j59;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class l44 extends MediatedBannerAdapter {
    public final MediatedNativeAdapter a;
    public final o44 b;
    public final Object c = new Object();
    public MediatedBannerAdapter.MediatedBannerAdapterListener d;
    public volatile boolean e;

    public l44(MediatedNativeAdapter mediatedNativeAdapter, o44 o44Var) {
        this.a = mediatedNativeAdapter;
        this.b = o44Var;
    }

    public static final j59 a(l44 l44Var, MediatedAdRequestError mediatedAdRequestError) {
        j59 j59Var;
        synchronized (l44Var.c) {
            try {
                MediatedBannerAdapter.MediatedBannerAdapterListener mediatedBannerAdapterListener = l44Var.d;
                l44Var.d = null;
                if (mediatedBannerAdapterListener != null) {
                    mediatedBannerAdapterListener.onAdFailedToLoad(mediatedAdRequestError);
                }
                j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return j59Var;
    }

    public static final MediatedBannerAdapter.MediatedBannerAdapterListener b(l44 l44Var) {
        return l44Var.d;
    }

    @Override // com.monetization.ads.mediation.base.a
    public final MediatedAdObject getAdObject() {
        this.a.getAdObject();
        return null;
    }

    @Override // com.monetization.ads.mediation.base.a
    public final MediatedAdapterInfo getAdapterInfo() {
        return this.a.getAdapterInfo();
    }

    @Override // com.monetization.ads.mediation.base.a
    public final boolean getShouldTrackImpressionAutomatically() {
        return this.a.getShouldTrackImpressionAutomatically();
    }

    @Override // com.monetization.ads.mediation.banner.MediatedBannerAdapter
    public final void loadBanner(Context context, MediatedBannerAdapter.MediatedBannerAdapterListener mediatedBannerAdapterListener, Map map, Map map2) {
        if (this.e) {
            mediatedBannerAdapterListener.onAdFailedToLoad(new MediatedAdRequestError(1, "Load already in progress"));
            return;
        }
        synchronized (this.c) {
            if (this.e) {
                mediatedBannerAdapterListener.onAdFailedToLoad(new MediatedAdRequestError(1, "Load already in progress"));
                return;
            }
            this.e = true;
            this.d = mediatedBannerAdapterListener;
            j59 j59Var = j59.a;
            this.a.loadAd(context, new k44(context, this.b, new defpackage.pr1(this, 2), new defpackage.ca2(this, 7), new defpackage.rr1(this, 5), this.c), map, map2);
        }
    }

    @Override // com.monetization.ads.mediation.banner.MediatedBannerAdapter
    public final void onInvalidate() {
        synchronized (this.c) {
            this.d = null;
            this.e = false;
            j59 j59Var = j59.a;
        }
    }

    public static final j59 a(l44 l44Var) {
        l44Var.e = false;
        return j59.a;
    }
}
