package com.monetization.ads.exo.source.dash;

import android.net.Uri;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import yads.az;
import yads.it4;
import yads.xs4;
import yads.yc0;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements it4 {
    public static final Pattern a = Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

    @Override // yads.it4
    public final Object a(Uri uri, yc0 yc0Var) throws IOException {
        String line = new BufferedReader(new InputStreamReader(yc0Var, az.c)).readLine();
        try {
            Matcher matcher = a.matcher(line);
            if (!matcher.matches()) {
                throw new xs4("Couldn't parse timestamp: " + line, null, true, 4);
            }
            String strGroup = matcher.group(1);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            long time = simpleDateFormat.parse(strGroup).getTime();
            if (!"Z".equals(matcher.group(2))) {
                long j = "+".equals(matcher.group(4)) ? 1L : -1L;
                long j2 = Long.parseLong(matcher.group(5));
                String strGroup2 = matcher.group(7);
                time -= (((j2 * 60) + (TextUtils.isEmpty(strGroup2) ? 0L : Long.parseLong(strGroup2))) * 60000) * j;
            }
            return Long.valueOf(time);
        } catch (ParseException e) {
            throw new xs4(null, e, true, 4);
        }
    }
}
