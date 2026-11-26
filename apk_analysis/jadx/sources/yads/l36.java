package yads;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class l36 implements mt5 {
    public static final l36 c = new l36();
    public final List b;

    public l36(sb0 sb0Var) {
        this.b = Collections.singletonList(sb0Var);
    }

    @Override // yads.mt5
    public final long a(int i) {
        if (i == 0) {
            return 0L;
        }
        defpackage.mi2.b();
        return 0L;
    }

    @Override // yads.mt5
    public final List b(long j) {
        return j >= 0 ? this.b : Collections.EMPTY_LIST;
    }

    public l36() {
        this.b = Collections.EMPTY_LIST;
    }

    @Override // yads.mt5
    public final int a(long j) {
        return j < 0 ? 0 : -1;
    }

    @Override // yads.mt5
    public final int a() {
        return 1;
    }
}
