package yads;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class v00 extends IOException {
    public v00(int i) {
        super("Illegal clipping: ".concat(i != 0 ? i != 1 ? i != 2 ? "unknown" : "start exceeds end" : "not seekable to start" : "invalid period count"));
    }
}
