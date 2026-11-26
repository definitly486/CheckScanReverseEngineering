package yads;

import androidx.media3.exoplayer.ExoPlayer;
import java.util.Calendar;
import java.util.SimpleTimeZone;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes6.dex */
public final class fd0 implements Comparable {
    public static final SimpleTimeZone f = new SimpleTimeZone(0, "UTC");
    public final long b;
    public final TimeZone c;
    public final defpackage.cl4 d = defpackage.nm4.a(defpackage.po4.NONE, new defpackage.fz0(this, 3));
    public final long e;

    public fd0(long j, TimeZone timeZone) {
        this.b = j;
        this.c = timeZone;
        this.e = j - ((long) ((timeZone.getRawOffset() / 60) * ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS));
    }

    public static final Calendar a(fd0 fd0Var) {
        Calendar calendar = Calendar.getInstance(f);
        calendar.setTimeInMillis(fd0Var.b);
        return calendar;
    }

    public final TimeZone b() {
        return this.c;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return defpackage.aa4.g(this.e, ((fd0) obj).e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof fd0) && this.e == ((fd0) obj).e;
    }

    public final int hashCode() {
        return Long.hashCode(this.e);
    }

    public final String toString() {
        return ed0.a((Calendar) this.d.getValue());
    }

    public final long a() {
        return this.b;
    }
}
