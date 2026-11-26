package yads;

import java.io.Serializable;

/* JADX INFO: loaded from: classes6.dex */
public final class je3 extends a0 implements Serializable {
    public final Object b;
    public final Object c;

    public je3(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.c;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
