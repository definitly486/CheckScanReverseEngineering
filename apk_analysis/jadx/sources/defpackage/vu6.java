package defpackage;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public enum vu6 {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4),
    UNRECOGNIZED(-1);

    private static final SparseArray<vu6> valueMap;
    private final int value;

    static {
        vu6 vu6Var = DEFAULT;
        vu6 vu6Var2 = UNMETERED_ONLY;
        vu6 vu6Var3 = UNMETERED_OR_DAILY;
        vu6 vu6Var4 = FAST_IF_RADIO_AWAKE;
        vu6 vu6Var5 = NEVER;
        vu6 vu6Var6 = UNRECOGNIZED;
        SparseArray<vu6> sparseArray = new SparseArray<>();
        valueMap = sparseArray;
        sparseArray.put(0, vu6Var);
        sparseArray.put(1, vu6Var2);
        sparseArray.put(2, vu6Var3);
        sparseArray.put(3, vu6Var4);
        sparseArray.put(4, vu6Var5);
        sparseArray.put(-1, vu6Var6);
    }

    vu6(int i) {
        this.value = i;
    }
}
