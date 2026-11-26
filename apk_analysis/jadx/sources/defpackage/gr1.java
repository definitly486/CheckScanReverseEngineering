package defpackage;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public abstract class gr1 {

    public enum a {
        NOT_SET(0),
        EVENT_OVERRIDE(5);

        private static final SparseArray<a> valueMap;
        private final int value;

        static {
            a aVar = NOT_SET;
            a aVar2 = EVENT_OVERRIDE;
            SparseArray<a> sparseArray = new SparseArray<>();
            valueMap = sparseArray;
            sparseArray.put(0, aVar);
            sparseArray.put(5, aVar2);
        }

        a(int i) {
            this.value = i;
        }
    }

    public abstract z43 a();

    public abstract a b();
}
