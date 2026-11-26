package androidx.compose.runtime.snapshots.tooling;

import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotInstanceObservers {
    public static final int $stable = 0;
    private final nl3<Object, j59> readObserver;
    private final nl3<Object, j59> writeObserver;

    public /* synthetic */ SnapshotInstanceObservers(nl3 nl3Var, nl3 nl3Var2, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : nl3Var, (i & 2) != 0 ? null : nl3Var2);
    }

    public final nl3<Object, j59> getReadObserver() {
        return this.readObserver;
    }

    public final nl3<Object, j59> getWriteObserver() {
        return this.writeObserver;
    }

    public SnapshotInstanceObservers(nl3<Object, j59> nl3Var, nl3<Object, j59> nl3Var2) {
        this.readObserver = nl3Var;
        this.writeObserver = nl3Var2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SnapshotInstanceObservers() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
