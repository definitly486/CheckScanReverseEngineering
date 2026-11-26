package yads;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class xc0 extends IOException {
    public final int b;

    public xc0(int i) {
        this.b = i;
    }

    public xc0(Exception exc, int i) {
        super(exc);
        this.b = i;
    }

    public xc0(String str, Exception exc, int i) {
        super(str, exc);
        this.b = i;
    }
}
