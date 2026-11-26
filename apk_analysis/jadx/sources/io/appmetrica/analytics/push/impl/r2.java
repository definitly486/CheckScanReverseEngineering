package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.settings.PushFilter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public final class r2 implements PushFilter {
    @Override // io.appmetrica.analytics.push.settings.PushFilter
    public final PushFilter.FilterResult filter(PushMessage pushMessage) {
        Long timeToShowMillis = pushMessage.getTimeToShowMillis();
        Long timeToHideMillis = pushMessage.getNotification() == null ? null : pushMessage.getNotification().getTimeToHideMillis();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (timeToShowMillis != null && timeToShowMillis.longValue() < jCurrentTimeMillis) {
            Locale locale = Locale.US;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss", locale);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            String str = simpleDateFormat.format(new Date(jCurrentTimeMillis));
            long jLongValue = timeToShowMillis.longValue();
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss", locale);
            simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("UTC"));
            return PushFilter.FilterResult.silence("Time to live is up", "Cur time: " + str + ". Time to show: " + simpleDateFormat2.format(new Date(jLongValue)));
        }
        if (timeToHideMillis == null || timeToHideMillis.longValue() >= jCurrentTimeMillis) {
            return PushFilter.FilterResult.show();
        }
        Locale locale2 = Locale.US;
        SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss", locale2);
        simpleDateFormat3.setTimeZone(TimeZone.getTimeZone("UTC"));
        String str2 = simpleDateFormat3.format(new Date(jCurrentTimeMillis));
        long jLongValue2 = timeToHideMillis.longValue();
        SimpleDateFormat simpleDateFormat4 = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss", locale2);
        simpleDateFormat4.setTimeZone(TimeZone.getTimeZone("UTC"));
        return PushFilter.FilterResult.silence("Time to live is up", "Cur time: " + str2 + ". Time to hide: " + simpleDateFormat4.format(new Date(jLongValue2)));
    }
}
