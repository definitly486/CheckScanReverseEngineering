package androidx.compose.ui.input.pointer;

import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidPointerIconType implements PointerIcon {
    public static final int $stable = 0;
    private final int type;

    public AndroidPointerIconType(int i) {
        this.type = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!AndroidPointerIconType.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        return this.type == ((AndroidPointerIconType) obj).type;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return this.type;
    }

    public String toString() {
        return rg.h(new StringBuilder("AndroidPointerIcon(type="), this.type, ')');
    }
}
