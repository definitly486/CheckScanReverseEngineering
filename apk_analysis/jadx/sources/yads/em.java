package yads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import androidx.media3.extractor.OpusUtil;

/* JADX INFO: loaded from: classes6.dex */
public abstract class em {
    public static final AudioAttributes a = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

    public static int[] a() {
        le3 le3Var = oe3.c;
        ke3 ke3Var = new ke3();
        p55 p55Var = fm.e;
        n55 n55Var = p55Var.c;
        if (n55Var == null) {
            n55 n55Var2 = new n55(p55Var, new o55(0, p55Var.g, p55Var.f));
            p55Var.c = n55Var2;
            n55Var = n55Var2;
        }
        i46 it = n55Var.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(num.intValue()).setSampleRate(OpusUtil.SAMPLE_RATE).build(), a)) {
                ke3Var.a(num);
            }
        }
        ke3Var.a((Object) 2);
        return bq3.a(ke3Var.a());
    }

    public static int a(int i, int i2) {
        for (int i3 = 8; i3 > 0; i3--) {
            if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i).setSampleRate(i2).setChannelMask(u56.a(i3)).build(), a)) {
                return i3;
            }
        }
        return 0;
    }
}
