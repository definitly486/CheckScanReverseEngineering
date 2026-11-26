package com.google.android.gms.location;

import android.location.Location;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.location.LocationCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.android.gms.internal.location.zzen;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaj {
    public static final DecimalFormat a;
    public static final DecimalFormat b;
    public static final /* synthetic */ int zza = 0;

    static {
        Locale locale = Locale.ROOT;
        a = new DecimalFormat(".000000", DecimalFormatSymbols.getInstance(locale));
        DecimalFormat decimalFormat = new DecimalFormat(".##", DecimalFormatSymbols.getInstance(locale));
        b = decimalFormat;
        decimalFormat.setRoundingMode(RoundingMode.DOWN);
    }

    public static StringBuilder zza(Location location, StringBuilder sb) {
        sb.ensureCapacity(100);
        if (location == null) {
            sb.append((String) null);
            return sb;
        }
        sb.append("{");
        if (!TextUtils.isEmpty(location.getProvider())) {
            sb.append(location.getProvider());
            sb.append(", ");
        }
        if (LocationCompat.isMock(location)) {
            sb.append("mock, ");
        }
        double latitude = location.getLatitude();
        DecimalFormat decimalFormat = a;
        sb.append(decimalFormat.format(latitude));
        sb.append(StringUtils.COMMA);
        sb.append(decimalFormat.format(location.getLongitude()));
        boolean zHasAccuracy = location.hasAccuracy();
        DecimalFormat decimalFormat2 = b;
        if (zHasAccuracy) {
            sb.append("±");
            sb.append(decimalFormat2.format(location.getAccuracy()));
            sb.append(CmcdData.OBJECT_TYPE_MANIFEST);
        }
        if (location.hasAltitude()) {
            sb.append(", alt=");
            sb.append(decimalFormat2.format(location.getAltitude()));
            if (LocationCompat.hasVerticalAccuracy(location)) {
                sb.append("±");
                sb.append(decimalFormat2.format(LocationCompat.getVerticalAccuracyMeters(location)));
            }
            sb.append(CmcdData.OBJECT_TYPE_MANIFEST);
        }
        if (location.hasSpeed()) {
            sb.append(", spd=");
            sb.append(decimalFormat2.format(location.getSpeed()));
            if (LocationCompat.hasSpeedAccuracy(location)) {
                sb.append("±");
                sb.append(decimalFormat2.format(LocationCompat.getSpeedAccuracyMetersPerSecond(location)));
            }
            sb.append("m/s");
        }
        if (location.hasBearing()) {
            sb.append(", brg=");
            sb.append(decimalFormat2.format(location.getBearing()));
            if (LocationCompat.hasBearingAccuracy(location)) {
                sb.append("±");
                sb.append(decimalFormat2.format(LocationCompat.getBearingAccuracyDegrees(location)));
            }
            sb.append("°");
        }
        Bundle extras = location.getExtras();
        String string = extras != null ? extras.getString("floorLabel") : null;
        if (string != null) {
            sb.append(", fl=");
            sb.append(string);
        }
        Bundle extras2 = location.getExtras();
        String string2 = extras2 != null ? extras2.getString("levelId") : null;
        if (string2 != null) {
            sb.append(", lv=");
            sb.append(string2);
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        sb.append(", ert=");
        sb.append(zzen.zza(LocationCompat.getElapsedRealtimeMillis(location) + jCurrentTimeMillis));
        sb.append('}');
        return sb;
    }
}
