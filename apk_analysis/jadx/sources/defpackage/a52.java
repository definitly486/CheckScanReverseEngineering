package defpackage;

import android.content.Context;
import android.os.SystemClock;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.video.VideoCapture;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.Violation;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.my.target.e0;
import com.my.target.k0;
import com.my.target.m1;
import com.tapjoy.TJTaskHandler;
import com.tapjoy.c0;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a52 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ a52(iia iiaVar, nh5 nh5Var, Context context) {
        this.b = 5;
        this.c = iiaVar;
        this.d = nh5Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                ((CrashlyticsCore) this.c).lambda$setCustomKeys$6((Map) this.d);
                return;
            case 1:
                FragmentStrictMode.handlePolicyViolation$lambda$0((FragmentStrictMode.Policy) this.c, (Violation) this.d);
                return;
            case 2:
                ((VideoCapture) this.c).lambda$createPipeline$2((DeferrableSurface) this.d);
                return;
            case 3:
                ((c0) this.c).a((TJTaskHandler) this.d);
                return;
            case 4:
                k0.a aVar = (k0.a) this.c;
                e0 e0Var = (e0) this.d;
                float fLongBitsToDouble = (float) Double.longBitsToDouble(aVar.a.b.getAndSet(Double.doubleToRawLongBits(0.0d)));
                if (y14.a(0.0f, fLongBitsToDouble) == -1) {
                    e0Var.getClass();
                    try {
                        HashMap map = new HashMap();
                        map.put(TypedValues.TransitionType.S_DURATION, e0.e.format(fLongBitsToDouble));
                        map.put("localTimestamp", Long.toString(SystemClock.elapsedRealtime()));
                        m1.e(e0Var.b, "playbackDuration", map, 1);
                        return;
                    } catch (Throwable th) {
                        y14.u("PlaybackStatSender", "Unexpected exception: " + th.getMessage() + "\nexception=" + y14.p(th));
                        return;
                    }
                }
                return;
            default:
                iia iiaVar = (iia) this.c;
                nh5 nh5Var = (nh5) this.d;
                iiaVar.getClass();
                long jUptimeMillis = SystemClock.uptimeMillis();
                nh5Var.getClass();
                synchronized (iiaVar) {
                    iiaVar.o = new iia.a(SystemClock.uptimeMillis() - jUptimeMillis, new HashMap());
                    break;
                }
                return;
        }
    }

    public /* synthetic */ a52(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }
}
