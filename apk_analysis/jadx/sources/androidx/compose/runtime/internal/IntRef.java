package androidx.compose.runtime.internal;

import defpackage.ga1;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class IntRef {
    public static final int $stable = 8;
    private int element;

    public /* synthetic */ IntRef(int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 0 : i);
    }

    public final int getElement() {
        return this.element;
    }

    public final void setElement(int i) {
        this.element = i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IntRef(element = ");
        sb.append(this.element);
        sb.append(")@");
        int iHashCode = hashCode();
        ga1.b(16);
        String string = Integer.toString(iHashCode, 16);
        string.getClass();
        sb.append(string);
        return sb.toString();
    }

    public IntRef(int i) {
        this.element = i;
    }

    public IntRef() {
        this(0, 1, null);
    }
}
