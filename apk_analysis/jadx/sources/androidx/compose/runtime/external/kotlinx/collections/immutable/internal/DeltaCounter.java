package androidx.compose.runtime.external.kotlinx.collections.immutable.internal;

import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class DeltaCounter {
    public static final int $stable = 8;
    private int count;

    public /* synthetic */ DeltaCounter(int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 0 : i);
    }

    public static /* synthetic */ DeltaCounter copy$default(DeltaCounter deltaCounter, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = deltaCounter.count;
        }
        return deltaCounter.copy(i);
    }

    public final int component1() {
        return this.count;
    }

    public final DeltaCounter copy(int i) {
        return new DeltaCounter(i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DeltaCounter) && this.count == ((DeltaCounter) obj).count;
    }

    public final int getCount() {
        return this.count;
    }

    public int hashCode() {
        return Integer.hashCode(this.count);
    }

    public final void plusAssign(int i) {
        this.count += i;
    }

    public final void setCount(int i) {
        this.count = i;
    }

    public String toString() {
        return rg.h(new StringBuilder("DeltaCounter(count="), this.count, ')');
    }

    public DeltaCounter(int i) {
        this.count = i;
    }

    public DeltaCounter() {
        this(0, 1, null);
    }
}
