package defpackage;

import android.adservices.topics.TopicsManager;
import android.util.Log;
import android.view.Display;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.audio.AudioOutput;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.impl.C1158oj;
import yads.fr1;
import yads.hp1;
import yads.l66;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vh implements ListenerSet.Event, l66, FunctionWithThrowable {
    public final /* synthetic */ int b;

    public /* synthetic */ vh(int i) {
        this.b = i;
    }

    public static /* bridge */ /* synthetic */ TopicsManager b(Object obj) {
        return (TopicsManager) obj;
    }

    public static /* synthetic */ void c() {
        throw new OutOfMemoryError();
    }

    public static void d(int i, String str, String str2) {
        Log.d(str2, str + i);
    }

    public static /* synthetic */ void e(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    public static /* synthetic */ void f(String str, float f) {
        throw new IllegalArgumentException(str + f);
    }

    public static boolean g(ne4 ne4Var, Class cls) {
        ne4Var.getClass();
        return ne4Var.equals(x07.a(cls));
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Double d = (Double) obj;
        switch (this.b) {
            case 10:
                return fr1.b(d.doubleValue());
            default:
                return hp1.a(d.doubleValue());
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
    public Object apply(Object obj) {
        return C1158oj.a((Display) obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AudioOutput.Listener) obj).onOffloadDataRequest();
    }
}
