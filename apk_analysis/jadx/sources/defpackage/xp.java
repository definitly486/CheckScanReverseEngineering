package defpackage;

import android.telephony.SubscriptionManager;
import android.view.ScrollCaptureSession;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import androidx.fragment.app.Fragment;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.audio.AudioOutput;
import com.google.android.gms.measurement.internal.zzic;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.impl.Hl;
import yads.bt2;
import yads.iw;
import yads.q26;
import yads.ws2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xp implements ListenerSet.Event, FunctionWithThrowable, Interpolator, iw, bt2 {
    public static /* bridge */ /* synthetic */ ScrollCaptureSession c(Object obj) {
        return (ScrollCaptureSession) obj;
    }

    public static String d(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    public static String e(StringBuilder sb, String str, char c) {
        sb.append(str);
        sb.append(c);
        return sb.toString();
    }

    public static StringBuilder f(long j, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(j);
        sb.append(str2);
        return sb;
    }

    public static /* synthetic */ void g() {
        throw new AssertionError();
    }

    public static void h(zzic zzicVar, String str) {
        zzicVar.zzaW().zze().zza(str);
    }

    public static /* synthetic */ void i(Object obj, Object obj2) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
    public Object apply(Object obj) {
        return Hl.a((SubscriptionManager) obj);
    }

    @Override // yads.bt2
    public ws2[] b() {
        return q26.a();
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$6(f);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AudioOutput.Listener) obj).onReleased();
    }
}
