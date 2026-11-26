package yads;

import android.media.MediaFormat;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d04 {
    public static void a(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }
}
