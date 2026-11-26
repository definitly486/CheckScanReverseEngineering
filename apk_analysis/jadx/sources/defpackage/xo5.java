package defpackage;

import java.io.Serializable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class xo5 {
    private static final /* synthetic */ xo5[] $VALUES;
    public static final xo5 COMPLETE;

    public static final class a implements Serializable {
    }

    public static final class b implements Serializable {
        public final Throwable b;

        public b(Throwable th) {
            this.b = th;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            Object obj2 = ((b) obj).b;
            Throwable th = this.b;
            if (th != obj2) {
                return th != null && th.equals(obj2);
            }
            return true;
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        public final String toString() {
            return "NotificationLite.Error[" + this.b + "]";
        }
    }

    public static final class c implements Serializable {
    }

    static {
        xo5 xo5Var = new xo5("COMPLETE", 0);
        COMPLETE = xo5Var;
        $VALUES = new xo5[]{xo5Var};
    }

    public xo5() {
        throw null;
    }

    public static xo5 valueOf(String str) {
        return (xo5) Enum.valueOf(xo5.class, str);
    }

    public static xo5[] values() {
        return (xo5[]) $VALUES.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "NotificationLite.Complete";
    }
}
