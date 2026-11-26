package androidx.compose.runtime;

import defpackage.aa4;
import defpackage.vg;

/* JADX INFO: loaded from: classes2.dex */
public final class JoinedKey {
    public static final int $stable = 8;
    private final Object left;
    private final Object right;

    public JoinedKey(Object obj, Object obj2) {
        this.left = obj;
        this.right = obj2;
    }

    public static /* synthetic */ JoinedKey copy$default(JoinedKey joinedKey, Object obj, Object obj2, int i, Object obj3) {
        if ((i & 1) != 0) {
            obj = joinedKey.left;
        }
        if ((i & 2) != 0) {
            obj2 = joinedKey.right;
        }
        return joinedKey.copy(obj, obj2);
    }

    private final int hashCodeOf(Object obj) {
        if (obj instanceof Enum) {
            return ((Enum) obj).ordinal();
        }
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public final Object component1() {
        return this.left;
    }

    public final Object component2() {
        return this.right;
    }

    public final JoinedKey copy(Object obj, Object obj2) {
        return new JoinedKey(obj, obj2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof JoinedKey)) {
            return false;
        }
        JoinedKey joinedKey = (JoinedKey) obj;
        return aa4.e(this.left, joinedKey.left) && aa4.e(this.right, joinedKey.right);
    }

    public final Object getLeft() {
        return this.left;
    }

    public final Object getRight() {
        return this.right;
    }

    public int hashCode() {
        return (hashCodeOf(this.left) * 31) + hashCodeOf(this.right);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("JoinedKey(left=");
        sb.append(this.left);
        sb.append(", right=");
        return vg.d(sb, this.right, ')');
    }
}
