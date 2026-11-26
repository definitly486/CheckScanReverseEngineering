package defpackage;

import android.os.Bundle;
import android.os.Trace;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.media3.common.audio.DefaultGainProvider;
import yads.e91;
import yads.jv;
import yads.kv;
import yads.l66;
import yads.m04;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dh implements DefaultGainProvider.FadeProvider, l66, jv {
    public static double b(double d, double d2, double d3, double d4) {
        return ((d - d2) * d3) + d4;
    }

    public static int c(int i, int i2, int i3, int i4, int i5) {
        return Math.max(((i * i2) / i3) + i4, i5);
    }

    public static long d(Debug debug, long j) {
        Trace.endSection();
        return DurationNs.m845constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU() - j);
    }

    public static String e(StringBuilder sb, boolean z, String str) {
        sb.append(z);
        sb.append(str);
        return sb.toString();
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return e91.b(((Long) obj).longValue());
    }

    @Override // androidx.media3.common.audio.DefaultGainProvider.FadeProvider
    public float getGainFactorAt(long j, long j2) {
        return DefaultGainProvider.lambda$static$2(j, j2);
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return m04.a(bundle);
    }
}
