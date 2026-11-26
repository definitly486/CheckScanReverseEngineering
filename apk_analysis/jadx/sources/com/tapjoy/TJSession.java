package com.tapjoy;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import androidx.tracing.Trace;
import defpackage.b36;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.n05;
import java.lang.ref.WeakReference;
import java.util.Calendar;
import java.util.Hashtable;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class TJSession {
    public static final Companion Companion = new Companion(null);
    public static volatile boolean k;
    public String a;
    public Integer b;
    public Integer c;
    public Integer d;
    public Long e;
    public Long f;
    public long g;
    public Long h;
    public boolean i;
    public final TJKeyValueStorage j;

    public static final class Companion {
        public Companion(jh2 jh2Var) {
        }
    }

    public TJSession(Context context) {
        context.getClass();
        this.a = "";
        TJKeyValueStorage tJKeyValueStorage = new TJKeyValueStorage(context, TapjoyConstants.TJC_PREFERENCE);
        this.j = tJKeyValueStorage;
        SharedPreferences sharedPreferences = context.getSharedPreferences("fiverocks", 0);
        sharedPreferences.getClass();
        new TJPreferencesMigration(tJKeyValueStorage, sharedPreferences, n05.e(new b36("fql", "pref_daily_frequency_last"), new b36("fq", "pref_daily_frequency"), new b36("ss", "pref_session_total_count"), new b36("std", "pref_session_total_duration"), new b36("slt", "pref_session_last_time"), new b36("sld", "pref_session_last_duration")), kx2.b).migrateAllKeysIfExists();
        int i = tJKeyValueStorage.getInt("pref_daily_frequency", 0);
        this.b = Integer.valueOf(Integer.bitCount(i & Trace.MAX_TRACE_LABEL_LENGTH));
        this.c = Integer.valueOf(Integer.bitCount(i & 1073741823));
        int i2 = tJKeyValueStorage.getInt("pref_session_total_count", 0);
        if (i2 > 0) {
            this.d = Integer.valueOf(i2);
        }
        long j = tJKeyValueStorage.getLong("pref_session_total_duration", 0L);
        if (j > 0) {
            this.e = Long.valueOf(j);
        }
        long j2 = tJKeyValueStorage.getLong("pref_session_last_time", 0L);
        if (j2 > 0) {
            this.f = Long.valueOf(j2);
        }
        long j3 = tJKeyValueStorage.getLong("pref_session_last_duration", 0L);
        if (j3 > 0) {
            this.h = Long.valueOf(j3);
        }
    }

    public static /* synthetic */ void updateDailyFrequency$default(TJSession tJSession, Calendar calendar, int i, Object obj) {
        if ((i & 1) != 0) {
            calendar = Calendar.getInstance();
            calendar.getClass();
        }
        tJSession.updateDailyFrequency(calendar);
    }

    public final String a() {
        String strSHA256;
        TapjoyLog.i("generating sessionID...");
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            UUID uuidRandomUUID = UUID.randomUUID();
            StringBuilder sb = new StringBuilder();
            sb.append(jCurrentTimeMillis);
            sb.append(uuidRandomUUID);
            strSHA256 = TapjoyUtil.SHA256(sb.toString());
            strSHA256.getClass();
        } catch (Exception e) {
            TapjoyLog.e("unable to generate session id: " + e);
            strSHA256 = "";
        }
        this.a = strSHA256;
        return strSHA256;
    }

    public final void endSession() {
        this.a = "";
        if (k) {
            k = false;
            TapjoyLog.i("The session ended");
            long jCurrentTimeMillis = System.currentTimeMillis() - this.g;
            TJKeyValueStorage tJKeyValueStorage = this.j;
            long j = (tJKeyValueStorage != null ? tJKeyValueStorage.getLong("pref_session_total_duration", 0L) : 0L) + jCurrentTimeMillis;
            TJKeyValueStorage tJKeyValueStorage2 = this.j;
            if (tJKeyValueStorage2 != null) {
                tJKeyValueStorage2.setValue("pref_session_total_duration", Long.valueOf(j));
            }
            this.e = Long.valueOf(j);
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            TJKeyValueStorage tJKeyValueStorage3 = this.j;
            if (tJKeyValueStorage3 != null) {
                tJKeyValueStorage3.setValue("pref_session_last_time", Long.valueOf(jCurrentTimeMillis2));
            }
            TJKeyValueStorage tJKeyValueStorage4 = this.j;
            if (tJKeyValueStorage4 != null) {
                tJKeyValueStorage4.setValue("pref_session_last_duration", Long.valueOf(jCurrentTimeMillis));
            }
            this.f = Long.valueOf(jCurrentTimeMillis2);
            this.h = Long.valueOf(jCurrentTimeMillis);
            com.tapjoy.internal.s.c.notifyObservers();
        }
    }

    public final Long getDuration() {
        if (this.g > 0) {
            return Long.valueOf(System.currentTimeMillis() - this.g);
        }
        return null;
    }

    public final String getSessionId() {
        String str = this.a;
        return str.length() == 0 ? a() : str;
    }

    public final Long getSessionLastDuration() {
        return this.h;
    }

    public final Long getSessionLastLength() {
        return this.h;
    }

    public final Long getSessionLastTime() {
        return this.f;
    }

    public final int getSessionMonthlyFrequency() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final int getSessionTotalCount() {
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final Long getSessionTotalLength() {
        return this.e;
    }

    public final int getSessionWeeklyFrequency() {
        Integer num = this.b;
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final void initSession() {
        if (this.a.length() == 0) {
            this.a = a();
        }
        if (startSession()) {
            com.tapjoy.internal.f.a(null);
        }
    }

    public final boolean isSemiAutoSessionTrackingStarted() {
        return this.i;
    }

    public final void onActivityStart(Activity activity) {
        if (activity == null) {
            TapjoyLog.e("onActivityStart: The given activity was null");
            return;
        }
        com.tapjoy.internal.i.a(activity.getApplication());
        com.tapjoy.internal.i.b++;
        com.tapjoy.internal.i.c.a = new WeakReference(activity);
        if (startSession()) {
            com.tapjoy.internal.f.a(activity);
        }
    }

    public final void onActivityStop(Activity activity) {
        if (activity == null) {
            TapjoyLog.e("onActivityStop: The given activity was null");
            return;
        }
        int i = com.tapjoy.internal.i.b - 1;
        com.tapjoy.internal.i.b = i;
        com.tapjoy.internal.i.c.a = null;
        if (i < 0) {
            com.tapjoy.internal.i.b = 0;
        }
        if (com.tapjoy.internal.i.b > 0) {
            return;
        }
        endSession();
    }

    public final void setAutomaticSessionTracking(Context context, Hashtable<String, ?> hashtable) {
        context.getClass();
        if (hashtable == null || !String.valueOf(hashtable.get(TapjoyConnectFlag.DISABLE_AUTOMATIC_SESSION_TRACKING)).equalsIgnoreCase(TJAdUnitConstants.String.TRUE)) {
            com.tapjoy.internal.c.a(context);
        } else {
            TapjoyLog.i("Automatic session tracking is disabled.");
        }
    }

    public final void setSemiAutoSessionTrackingStarted(boolean z) {
        this.i = z;
    }

    public final boolean startSession() {
        if (k) {
            return false;
        }
        k = true;
        TapjoyLog.i("New session started");
        updateDailyFrequency$default(this, null, 1, null);
        TJKeyValueStorage tJKeyValueStorage = this.j;
        int i = (tJKeyValueStorage != null ? tJKeyValueStorage.getInt("pref_session_total_count", 0) : 0) + 1;
        TJKeyValueStorage tJKeyValueStorage2 = this.j;
        if (tJKeyValueStorage2 != null) {
            tJKeyValueStorage2.setValue("pref_session_total_count", Integer.valueOf(i));
        }
        this.d = Integer.valueOf(i);
        this.g = System.currentTimeMillis();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00c1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c6  */
    public final void updateDailyFrequency(Calendar calendar) {
        Calendar calendar2;
        long timeInMillis;
        int i;
        calendar.getClass();
        int i2 = 1;
        int i3 = calendar.get(5) + (calendar.get(2) * 100) + (calendar.get(1) * 10000) + 100;
        TJKeyValueStorage tJKeyValueStorage = this.j;
        int i4 = 0;
        int i5 = tJKeyValueStorage != null ? tJKeyValueStorage.getInt("pref_daily_frequency_last", 0) : 0;
        if (i5 != i3) {
            if (i5 == 0) {
                this.b = 1;
                this.c = 1;
            } else {
                TJKeyValueStorage tJKeyValueStorage2 = this.j;
                int i6 = tJKeyValueStorage2 != null ? tJKeyValueStorage2.getInt("pref_daily_frequency", 0) : 0;
                Calendar calendar3 = Calendar.getInstance();
                calendar3.set(i5 / 10000, ((i5 / 100) % 100) - 1, i5 % 100);
                int iSignum = Integer.signum(calendar.get(1) - calendar3.get(1));
                if (iSignum != -1) {
                    if (iSignum != 1) {
                        i = calendar.get(6) - calendar3.get(6);
                    } else {
                        calendar2 = (Calendar) calendar.clone();
                        calendar2.set(calendar3.get(1), calendar3.get(2), calendar3.get(5));
                        timeInMillis = calendar.getTimeInMillis();
                    }
                    if (Math.abs(i) < 30) {
                        if (i >= 0) {
                            i4 = i6 << i;
                        } else {
                            i4 = i6 >> (-i);
                        }
                    }
                    i2 = 1 | i4;
                    int iBitCount = Integer.bitCount(i2 & Trace.MAX_TRACE_LABEL_LENGTH);
                    int iBitCount2 = Integer.bitCount(1073741823 & i2);
                    this.b = Integer.valueOf(iBitCount);
                    this.c = Integer.valueOf(iBitCount2);
                } else {
                    calendar2 = (Calendar) calendar3.clone();
                    calendar2.set(calendar.get(1), calendar.get(2), calendar.get(5));
                    timeInMillis = calendar3.getTimeInMillis();
                }
                i = 0;
                while (calendar2.getTimeInMillis() < timeInMillis) {
                    calendar2.add(5, 1);
                    i++;
                }
                if (iSignum <= 0) {
                    i = -i;
                }
                if (Math.abs(i) < 30) {
                    if (i >= 0) {
                        i4 = i6 << i;
                    } else {
                        i4 = i6 >> (-i);
                    }
                }
                i2 = 1 | i4;
                int iBitCount3 = Integer.bitCount(i2 & Trace.MAX_TRACE_LABEL_LENGTH);
                int iBitCount4 = Integer.bitCount(1073741823 & i2);
                this.b = Integer.valueOf(iBitCount3);
                this.c = Integer.valueOf(iBitCount4);
            }
            TJKeyValueStorage tJKeyValueStorage3 = this.j;
            if (tJKeyValueStorage3 != null) {
                tJKeyValueStorage3.setValue("pref_daily_frequency_last", Integer.valueOf(i3));
            }
            TJKeyValueStorage tJKeyValueStorage4 = this.j;
            if (tJKeyValueStorage4 != null) {
                tJKeyValueStorage4.setValue("pref_daily_frequency", Integer.valueOf(i2));
            }
        }
    }
}
