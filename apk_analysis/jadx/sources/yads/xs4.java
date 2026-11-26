package yads;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class xs4 extends IOException {
    public final boolean b;
    public final int c;

    public xs4(String str, Exception exc, boolean z, int i) {
        super(str, exc);
        this.b = z;
        this.c = i;
    }

    public static xs4 a(String str) {
        return new xs4(str, null, false, 1);
    }
}
