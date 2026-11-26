package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class mh6 implements lq3 {
    public final boolean b;

    public mh6(boolean z) {
        this.b = z;
    }

    @Override // yads.lq3
    public final String a() {
        return String.format("viewable: %s", Arrays.copyOf(new Object[]{Boolean.valueOf(this.b)}, 1));
    }
}
