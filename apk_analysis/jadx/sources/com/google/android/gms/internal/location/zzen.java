package com.google.android.gms.internal.location;

import androidx.compose.material3.internal.CalendarModelKt;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class zzen {
    public static final SimpleDateFormat a;
    public static final StringBuilder b;

    static {
        Locale locale = Locale.ROOT;
        a = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", locale);
        new SimpleDateFormat("MM-dd HH:mm:ss", locale);
        b = new StringBuilder(33);
    }

    public static String zza(long j) {
        if (j < 0) {
            return Long.toString(j);
        }
        return a.format(new Date(j));
    }

    public static String zzb(long j) {
        String string;
        StringBuilder sb = b;
        synchronized (sb) {
            sb.setLength(0);
            zzc(j, sb);
            string = sb.toString();
        }
        return string;
    }

    public static StringBuilder zzc(long j, StringBuilder sb) {
        if (j == 0) {
            sb.append("0s");
            return sb;
        }
        sb.ensureCapacity(sb.length() + 27);
        boolean z = false;
        if (j < 0) {
            sb.append("-");
            if (j != Long.MIN_VALUE) {
                j = -j;
            } else {
                z = true;
                j = Long.MAX_VALUE;
            }
        }
        if (j >= CalendarModelKt.MillisecondsIn24Hours) {
            sb.append(j / CalendarModelKt.MillisecondsIn24Hours);
            sb.append("d");
            j %= CalendarModelKt.MillisecondsIn24Hours;
        }
        if (z) {
            j++;
        }
        if (j >= 3600000) {
            sb.append(j / 3600000);
            sb.append(CmcdData.STREAMING_FORMAT_HLS);
            j %= 3600000;
        }
        if (j >= 60000) {
            sb.append(j / 60000);
            sb.append(CmcdData.OBJECT_TYPE_MANIFEST);
            j %= 60000;
        }
        if (j >= 1000) {
            sb.append(j / 1000);
            sb.append(CmcdData.STREAMING_FORMAT_SS);
            j %= 1000;
        }
        if (j > 0) {
            sb.append(j);
            sb.append("ms");
        }
        return sb;
    }
}
