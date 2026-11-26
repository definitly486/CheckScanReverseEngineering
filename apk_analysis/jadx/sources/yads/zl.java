package yads;

import android.media.AudioAttributes;

/* JADX INFO: loaded from: classes6.dex */
public final class zl {
    public final AudioAttributes a;

    public zl(am amVar) {
        AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(amVar.b).setFlags(amVar.c).setUsage(amVar.d);
        int i = u56.a;
        if (i >= 29) {
            xl.a(usage, amVar.e);
        }
        if (i >= 32) {
            yl.a(usage, amVar.f);
        }
        this.a = usage.build();
    }
}
