package androidx.media3.common.util;

import defpackage.kv2;
import defpackage.ud;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes3.dex */
public final class StuckPlayerException extends IllegalStateException {
    public static final int STUCK_BUFFERING_NOT_LOADING = 0;
    public static final int STUCK_BUFFERING_NO_PROGRESS = 1;
    public static final int STUCK_PLAYING_NOT_ENDING = 3;
    public static final int STUCK_PLAYING_NO_PROGRESS = 2;
    public static final int STUCK_SUPPRESSED = 4;
    public final int stuckType;
    public final int timeoutMs;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StuckType {
    }

    public StuckPlayerException(int i, int i2) {
        super(getMessage(i, i2));
        this.stuckType = i;
        this.timeoutMs = i2;
    }

    private static String getMessage(int i, int i2) {
        if (i == 0) {
            return kv2.b(i2, "Player stuck buffering and not loading for ", " ms");
        }
        if (i == 1) {
            return kv2.b(i2, "Player stuck buffering with no progress for ", " ms");
        }
        if (i == 2) {
            return kv2.b(i2, "Player stuck playing with no progress for ", " ms");
        }
        if (i == 3) {
            return kv2.b(i2, "Player stuck playing without ending for ", " ms");
        }
        if (i == 4) {
            return kv2.b(i2, "Player stuck suppressed for ", " ms");
        }
        ud.g();
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && StuckPlayerException.class == obj.getClass()) {
            StuckPlayerException stuckPlayerException = (StuckPlayerException) obj;
            if (this.stuckType == stuckPlayerException.stuckType && this.timeoutMs == stuckPlayerException.timeoutMs) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((527 + this.stuckType) * 31) + this.timeoutMs;
    }
}
