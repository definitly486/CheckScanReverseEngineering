package yads;

import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes6.dex */
public final class kl0 {
    public final aj0 a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final int f;
    public final boolean g;
    public final long h;
    public int i;
    public boolean j;

    public kl0(aj0 aj0Var, int i, int i2, int i3, int i4, int i5, boolean z) {
        a(i3, 0, "bufferForPlaybackMs", CommonUrlParts.Values.FALSE_INTEGER);
        a(i4, 0, "bufferForPlaybackAfterRebufferMs", CommonUrlParts.Values.FALSE_INTEGER);
        a(i, i3, "minBufferMs", "bufferForPlaybackMs");
        a(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        a(i2, i, "maxBufferMs", "minBufferMs");
        a(0, 0, "backBufferDurationMs", CommonUrlParts.Values.FALSE_INTEGER);
        this.a = aj0Var;
        this.b = u56.a(i);
        this.c = u56.a(i2);
        this.d = u56.a(i3);
        this.e = u56.a(i4);
        this.f = i5;
        this.i = i5 == -1 ? 13107200 : i5;
        this.g = z;
        this.h = u56.a(0L);
    }

    public static void a(int i, int i2, String str, String str2) {
        zj.a(str + " cannot be less than " + str2, i >= i2);
    }

    public final void a(boolean z) {
        int i = this.f;
        if (i == -1) {
            i = 13107200;
        }
        this.i = i;
        this.j = false;
        if (z) {
            aj0 aj0Var = this.a;
            synchronized (aj0Var) {
                aj0Var.a(0);
            }
        }
    }

    public kl0() {
        this(new aj0(), 50000, 50000, 2500, AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH, -1, false);
    }
}
