package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class k1b extends aya implements Serializable {
    public final Object b;
    public final Object c;

    public k1b(Object obj, Object obj2) {
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
