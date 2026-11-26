package yads;

import java.io.Serializable;

/* JADX INFO: loaded from: classes6.dex */
public final class me3 implements Serializable {
    public final Object[] b;

    public me3(Object[] objArr) {
        this.b = objArr;
    }

    public Object readResolve() {
        return oe3.b(this.b);
    }
}
