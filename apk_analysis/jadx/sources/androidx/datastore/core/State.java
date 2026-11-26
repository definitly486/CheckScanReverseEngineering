package androidx.datastore.core;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class State<T> {
    private final int version;

    private State(int i) {
        this.version = i;
    }

    public final int getVersion() {
        return this.version;
    }

    public /* synthetic */ State(int i, jh2 jh2Var) {
        this(i);
    }
}
