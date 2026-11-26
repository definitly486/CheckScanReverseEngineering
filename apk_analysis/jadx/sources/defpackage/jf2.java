package defpackage;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class jf2 implements ListenerSet.Event, rr5 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jf2(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.rr5
    public void a(xq5.a aVar) {
        o22 o22Var = (o22) this.b;
        cf3 cf3Var = (cf3) this.c;
        ip2.f(aVar, new f31(new x87(av0.b(fr3.b, qo2.b.plus(o22Var), c32.ATOMIC, new a97(cf3Var, aVar, null)))));
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onVideoDecoderReleased((AnalyticsListener.EventTime) this.b, (String) this.c);
    }
}
