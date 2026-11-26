package defpackage;

import java.time.DateTimeException;
import java.time.ZoneId;
import java.time.ZoneOffset;
import kotlinx.datetime.IllegalTimeZoneException;

/* JADX INFO: loaded from: classes5.dex */
@up7(with = uv8.class)
public class sv8 {
    public static final a Companion = new a();
    public final ZoneId a;

    public static final class a {
        public static sv8 a(String str) throws Exception {
            str.getClass();
            try {
                ZoneId zoneIdOf = ZoneId.of(str);
                zoneIdOf.getClass();
                return b(zoneIdOf);
            } catch (Exception e) {
                if (e instanceof DateTimeException) {
                    throw new IllegalTimeZoneException(e);
                }
                throw e;
            }
        }

        public static sv8 b(ZoneId zoneId) {
            boolean zIsFixedOffset;
            if (zoneId instanceof ZoneOffset) {
                ZoneOffset zoneOffset = (ZoneOffset) zoneId;
                new da9(zoneOffset);
                return new gc3(zoneOffset);
            }
            try {
                zIsFixedOffset = zoneId.getRules().isFixedOffset();
            } catch (ArrayIndexOutOfBoundsException unused) {
                zIsFixedOffset = false;
            }
            if (!zIsFixedOffset) {
                return new sv8(zoneId);
            }
            ZoneId zoneIdNormalized = zoneId.normalized();
            zoneIdNormalized.getClass();
            new da9((ZoneOffset) zoneIdNormalized);
            return new gc3(zoneId);
        }

        public final df4<sv8> serializer() {
            return uv8.a;
        }
    }

    static {
        ZoneOffset zoneOffset = ZoneOffset.UTC;
        zoneOffset.getClass();
        new da9(zoneOffset);
    }

    public sv8(ZoneId zoneId) {
        this.a = zoneId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof sv8) {
            return this.a.equals(((sv8) obj).a);
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
