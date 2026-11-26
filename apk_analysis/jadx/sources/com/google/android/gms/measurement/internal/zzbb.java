package com.google.android.gms.measurement.internal;

import defpackage.kh;
import defpackage.mvb;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbb extends mvb {
    public long c;
    public String d;

    @Override // defpackage.mvb
    public final boolean a() {
        Calendar calendar = Calendar.getInstance();
        this.c = ((long) (calendar.get(16) + calendar.get(15))) / 60000;
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        String lowerCase = language.toLowerCase(locale2);
        String lowerCase2 = locale.getCountry().toLowerCase(locale2);
        this.d = kh.c(new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length()), lowerCase, "-", lowerCase2);
        return false;
    }

    public final long zzb() {
        c();
        return this.c;
    }

    public final String zzc() {
        c();
        return this.d;
    }
}
