package defpackage;

import java.time.ZoneOffset;

/* JADX INFO: loaded from: classes5.dex */
@up7(with = xa9.class)
public final class da9 {
    public static final a Companion = new a();
    public final ZoneOffset a;

    public static final class a {
        public final df4<da9> serializer() {
            return xa9.a;
        }
    }

    static {
        ZoneOffset zoneOffset = ZoneOffset.UTC;
        zoneOffset.getClass();
        new da9(zoneOffset);
    }

    public da9(ZoneOffset zoneOffset) {
        zoneOffset.getClass();
        this.a = zoneOffset;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof da9) {
            return aa4.e(this.a, ((da9) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        String string = this.a.toString();
        string.getClass();
        return string;
    }
}
