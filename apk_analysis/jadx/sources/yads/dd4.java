package yads;

import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class dd4 implements ut5, Serializable {
    public final int b = h20.a(2, "expectedValuesPerKey");

    @Override // yads.ut5
    public final Object get() {
        return new ArrayList(this.b);
    }
}
