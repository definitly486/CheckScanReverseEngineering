package defpackage;

import android.view.WindowManager;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.audio.AudioOutput;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.impl.C1158oj;
import java.util.List;
import yads.bt2;
import yads.fr1;
import yads.l66;
import yads.m21;
import yads.np4;
import yads.st3;
import yads.ws2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class eq implements ListenerSet.Event, l66, st3, bt2, FunctionWithThrowable {
    public static /* synthetic */ void c(int i, StringBuilder sb) {
        sb.append(i);
        sb.append(']');
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public static /* synthetic */ void d(Object obj, int i, int i2, String str) {
        throw new IllegalArgumentException(str + i + obj + i2);
    }

    public static /* synthetic */ void e(Object obj, StringBuilder sb) {
        sb.append(obj);
        throw new IllegalStateException(sb.toString());
    }

    public static /* synthetic */ void f(String str, int i, Object obj, int i2, Object obj2, int i3) {
        throw new IllegalArgumentException(str + i + obj + i2 + obj2 + i3);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return fr1.c(((Double) obj).doubleValue());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
    public Object apply(Object obj) {
        return C1158oj.a((WindowManager) obj);
    }

    @Override // yads.bt2
    public ws2[] b() {
        return np4.a();
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AudioOutput.Listener) obj).onOffloadPresentationEnded();
    }

    @Override // yads.st3
    public boolean a(List list) {
        return m21.a(list);
    }
}
