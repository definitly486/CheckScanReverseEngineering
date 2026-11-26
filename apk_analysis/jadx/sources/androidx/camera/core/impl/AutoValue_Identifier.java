package androidx.camera.core.impl;

import defpackage.l2;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_Identifier extends Identifier {
    private final Object value;

    public AutoValue_Identifier(Object obj) {
        if (obj != null) {
            this.value = obj;
        } else {
            o2.d("Null value");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Identifier) {
            return this.value.equals(((Identifier) obj).getValue());
        }
        return false;
    }

    @Override // androidx.camera.core.impl.Identifier
    public Object getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value.hashCode() ^ 1000003;
    }

    public String toString() {
        return l2.d(new StringBuilder("Identifier{value="), this.value, "}");
    }
}
