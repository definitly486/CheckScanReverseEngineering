package androidx.compose.ui.layout;

import defpackage.bm3;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AlignmentLine {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    public static final int Unspecified = Integer.MIN_VALUE;
    private final bm3<Integer, Integer, Integer> merger;

    /* JADX WARN: Multi-variable type inference failed */
    private AlignmentLine(bm3<? super Integer, ? super Integer, Integer> bm3Var) {
        this.merger = bm3Var;
    }

    public final bm3<Integer, Integer, Integer> getMerger$ui() {
        return this.merger;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ AlignmentLine(bm3 bm3Var, jh2 jh2Var) {
        this(bm3Var);
    }
}
