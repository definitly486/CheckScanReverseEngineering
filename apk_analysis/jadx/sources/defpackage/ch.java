package defpackage;

import androidx.compose.ui.unit.Dp;
import androidx.media3.common.audio.DefaultGainProvider;
import yads.dz;
import yads.e91;
import yads.l66;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ch implements DefaultGainProvider.FadeProvider, l66, dz {
    public static String c(Object obj, String str, String str2) {
        return str + obj + str2;
    }

    public static void d(StringBuilder sb, String str, float f) {
        sb.append((Object) Dp.m9053toStringimpl(f));
        sb.append(str);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return e91.a(((Long) obj).longValue());
    }

    @Override // androidx.media3.common.audio.DefaultGainProvider.FadeProvider
    public float getGainFactorAt(long j, long j2) {
        return DefaultGainProvider.lambda$static$1(j, j2);
    }
}
