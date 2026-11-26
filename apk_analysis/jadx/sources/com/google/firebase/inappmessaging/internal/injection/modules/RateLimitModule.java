package com.google.firebase.inappmessaging.internal.injection.modules;

import androidx.compose.material3.internal.CalendarModelKt;
import com.google.firebase.inappmessaging.dagger.Module;
import com.google.firebase.inappmessaging.dagger.Provides;
import com.google.firebase.inappmessaging.internal.injection.qualifiers.AppForeground;
import com.google.firebase.inappmessaging.model.RateLimit;

/* JADX INFO: loaded from: classes4.dex */
@Module
public class RateLimitModule {
    private static final String APP_FOREGROUND_ONE_PER_DAY_LIMITER_KEY = "APP_FOREGROUND_ONE_PER_DAY_LIMITER_KEY";

    @Provides
    @AppForeground
    public RateLimit providesAppForegroundRateLimit() {
        return RateLimit.builder().setLimit(1L).setLimiterKey(APP_FOREGROUND_ONE_PER_DAY_LIMITER_KEY).setTimeToLiveMillis(CalendarModelKt.MillisecondsIn24Hours).build();
    }
}
