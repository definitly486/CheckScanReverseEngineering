package defpackage;

import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ck2 implements lm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ck2(int i) {
        this.b = i;
    }

    @Override // defpackage.lm3
    public final Object apply(Object obj) {
        switch (this.b) {
            case 0:
                return ((DefaultTrackSelector.SelectionOverride) obj).toBundle();
            default:
                return new DefaultAnalyticsCollector((Clock) obj);
        }
    }
}
