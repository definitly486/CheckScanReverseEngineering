package yads;

import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class h15 {
    public static String a(long j) {
        long jCeil = (long) Math.ceil(j / 1000.0f);
        return String.format(Locale.US, "%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(jCeil / 60), Long.valueOf(jCeil % 60)}, 2));
    }
}
