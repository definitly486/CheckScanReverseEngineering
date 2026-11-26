package defpackage;

import androidx.media3.common.C;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class bl2 implements Runnable {
    public final /* synthetic */ long b;
    public final /* synthetic */ cl2 c;

    public bl2(cl2 cl2Var, long j) {
        this.c = cl2Var;
        this.b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j = this.b;
        long jAbs = Math.abs(j) / C.NANOS_PER_SECOND;
        long jAbs2 = Math.abs(j) % C.NANOS_PER_SECOND;
        StringBuilder sb = new StringBuilder();
        if (j < 0) {
            sb.append("ClientCall started after CallOptions deadline was exceeded. Deadline has been exceeded for ");
        } else {
            sb.append("Deadline CallOptions was exceeded after ");
        }
        sb.append(jAbs);
        sb.append(String.format(Locale.US, ".%09d", Long.valueOf(jAbs2)));
        sb.append("s waiting for ");
        cl2 cl2Var = this.c;
        sb.append(cl2Var.a);
        cl2Var.g(h88.h.h(sb.toString()), true);
    }
}
