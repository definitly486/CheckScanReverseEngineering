package defpackage;

import androidx.media3.common.audio.DefaultGainProvider;
import yads.e91;
import yads.iw4;
import yads.l66;
import yads.tt3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bh implements DefaultGainProvider.FadeProvider, tt3, l66 {
    public static void c(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return e91.a(((Double) obj).doubleValue());
    }

    @Override // androidx.media3.common.audio.DefaultGainProvider.FadeProvider
    public float getGainFactorAt(long j, long j2) {
        return DefaultGainProvider.lambda$static$0(j, j2);
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((iw4) obj).onRenderedFirstFrame();
    }
}
