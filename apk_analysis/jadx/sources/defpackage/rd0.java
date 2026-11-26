package defpackage;

import androidx.media3.exoplayer.source.preload.BasePreloadManager;
import androidx.media3.exoplayer.source.preload.RankingDataComparator;
import com.my.target.m1;
import io.appmetrica.analytics.impl.Se;
import io.appmetrica.analytics.impl.Te;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class rd0 implements RankingDataComparator.InvalidationListener, Te, m1.b {
    public final /* synthetic */ Object b;

    @Override // io.appmetrica.analytics.impl.Te
    public boolean a() {
        return Se.b((String[]) this.b);
    }

    @Override // androidx.media3.exoplayer.source.preload.RankingDataComparator.InvalidationListener
    public void onRankingDataComparatorInvalidated() {
        ((BasePreloadManager) this.b).invalidate();
    }

    public /* synthetic */ rd0(Object obj) {
        this.b = obj;
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
        String str = ((xda) this.b).B;
    }
}
