package defpackage;

import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class tf2 implements ListenerSet.Event, SurfaceRequest.TransformationInfoListener, w08 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ tf2(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.w08
    public void c(oz7.a aVar) {
        o22 o22Var = (o22) this.b;
        bm3 bm3Var = (bm3) this.c;
        o22 o22VarA = q22.a(gx2.b, o22Var, true);
        oi2 oi2Var = qo2.a;
        if (o22VarA != oi2Var && o22VarA.get(g02.a.b) == null) {
            o22VarA = o22VarA.plus(oi2Var);
        }
        a0 j97Var = new j97(o22VarA, aVar);
        ip2.f(aVar, new f31(new x87(j97Var)));
        j97Var.m0(c32.DEFAULT, j97Var, bm3Var);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onAudioDisabled((AnalyticsListener.EventTime) this.b, (DecoderCounters) this.c);
    }

    @Override // androidx.camera.core.SurfaceRequest.TransformationInfoListener
    public void onTransformationInfoUpdate(SurfaceRequest.TransformationInfo transformationInfo) {
        ((DefaultSurfaceProcessor) this.b).lambda$onInputSurface$0((SurfaceRequest) this.c, transformationInfo);
    }
}
