package defpackage;

import android.os.Bundle;
import androidx.fragment.app.FragmentResultListener;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.my.target.m1;
import com.my.target.m2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class n5 implements xl3, ListenerSet.Event, FragmentResultListener, m1.b {
    public final /* synthetic */ Object b;

    public /* synthetic */ n5(m2 m2Var, xda xdaVar) {
        this.b = xdaVar;
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
        String str = ((xda) this.b).B;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (Boolean) ((nl3) this.b).invoke(obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onPlayerReleased((AnalyticsListener.EventTime) this.b);
    }

    @Override // androidx.fragment.app.FragmentResultListener
    public void onFragmentResult(String str, Bundle bundle) {
        ((bm3) this.b).invoke(str, bundle);
    }

    public /* synthetic */ n5(Object obj) {
        this.b = obj;
    }
}
