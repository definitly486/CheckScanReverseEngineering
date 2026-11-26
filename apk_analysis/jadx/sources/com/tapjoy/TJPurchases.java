package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import defpackage.b36;
import defpackage.n05;
import defpackage.ta8;
import defpackage.u96;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class TJPurchases {
    public static final TJPurchases INSTANCE = new TJPurchases();
    public static String a;
    public static int b;
    public static double c;
    public static double d;
    public static long e;
    public static final TJKeyValueStorage f;

    static {
        Context context = TapjoyConnectCore.getInstance().getContext();
        if (context != null) {
            TJKeyValueStorage tJKeyValueStorage = new TJKeyValueStorage(context, TapjoyConstants.TJC_PREFERENCE);
            f = tJKeyValueStorage;
            SharedPreferences sharedPreferences = context.getSharedPreferences("fiverocks", 0);
            sharedPreferences.getClass();
            new TJPreferencesMigration(tJKeyValueStorage, sharedPreferences, n05.e(new b36("ptc", "pref_purchase_currency"), new b36("pc", "pref_purchase_total_count"), new b36("ptp", "pref_purchase_total_price"), new b36("plp", "pref_purchase_last_price"), new b36("lpt", "pref_purchase_last_time")), u96.i("ptp", "plp")).migrateAllKeysIfExists();
            a = tJKeyValueStorage.getString("pref_purchase_currency", null);
            b = tJKeyValueStorage.getInt("pref_purchase_total_count", 0);
            c = tJKeyValueStorage.getDouble("pref_purchase_total_price", 0.0d);
            d = tJKeyValueStorage.getDouble("pref_purchase_last_price", 0.0d);
            e = tJKeyValueStorage.getLong("pref_purchase_last_time", 0L);
            String str = a;
            if (str != null && str.length() != 0) {
                tJKeyValueStorage.setValue("pref_purchase_currency", a);
            }
            int i = b;
            if (i > 0) {
                tJKeyValueStorage.setValue("pref_purchase_total_count", Integer.valueOf(i));
            }
            double d2 = c;
            if (d2 > 0.0d) {
                tJKeyValueStorage.setValue("pref_purchase_total_price", Double.valueOf(d2));
            }
            double d3 = d;
            if (d3 > 0.0d) {
                tJKeyValueStorage.setValue("pref_purchase_last_price", Double.valueOf(d3));
            }
            long j = e;
            if (j <= 0) {
                return;
            }
            tJKeyValueStorage.setValue("pref_purchase_last_time", Long.valueOf(j));
        }
    }

    public final String getPurchaseCurrency() {
        String str = a;
        return str == null ? "" : str;
    }

    public final Double getPurchaseLastPrice() {
        double d2 = d;
        if (d2 > 0.0d) {
            return Double.valueOf(d2);
        }
        return null;
    }

    public final Long getPurchaseLastTime() {
        long j = e;
        if (j > 0) {
            return Long.valueOf(j);
        }
        return null;
    }

    public final Integer getPurchaseTotalCount() {
        int i = b;
        if (i > 0) {
            return Integer.valueOf(i);
        }
        return null;
    }

    public final Double getPurchaseTotalPrice() {
        double d2 = c;
        if (d2 > 0.0d) {
            return Double.valueOf(d2);
        }
        return null;
    }

    public final void trackPurchase(String str, Double d2) {
        String string;
        String upperCase;
        String string2;
        String string3;
        if (str == null || (string3 = ta8.f0(str).toString()) == null || string3.length() != 0) {
            if (str == null || (string = ta8.f0(str).toString()) == null) {
                string = "";
            }
            if (string.length() == 3) {
                if (d2 == null) {
                    TapjoyLog.e("Currency price is null");
                    return;
                }
                if (str == null || (string2 = ta8.f0(str).toString()) == null) {
                    upperCase = "";
                } else {
                    upperCase = string2.toUpperCase(Locale.ROOT);
                    upperCase.getClass();
                }
                double dDoubleValue = d2.doubleValue();
                TJKeyValueStorage tJKeyValueStorage = f;
                int i = 1;
                if (tJKeyValueStorage != null) {
                    String string4 = tJKeyValueStorage.getString("pref_purchase_currency", null);
                    if (upperCase.equalsIgnoreCase(string4 != null ? string4 : "")) {
                        i = 1 + tJKeyValueStorage.getInt("pref_purchase_total_count", 0);
                        tJKeyValueStorage.setValue("pref_purchase_total_count", Integer.valueOf(i));
                        dDoubleValue += tJKeyValueStorage.getDouble("pref_purchase_total_price", 0.0d);
                        tJKeyValueStorage.setValue("pref_purchase_total_price", Double.valueOf(dDoubleValue));
                    } else {
                        tJKeyValueStorage.setValue("pref_purchase_currency", upperCase);
                        tJKeyValueStorage.setValue("pref_purchase_total_count", 1);
                        tJKeyValueStorage.setValue("pref_purchase_total_price", d2);
                        tJKeyValueStorage.remove("pref_purchase_last_time");
                        tJKeyValueStorage.remove("pref_purchase_last_price");
                        e = 0L;
                        d = 0.0d;
                    }
                }
                b = i;
                c = dDoubleValue;
                long jCurrentTimeMillis = System.currentTimeMillis();
                double dDoubleValue2 = d2.doubleValue();
                e = jCurrentTimeMillis;
                d = dDoubleValue2;
                if (jCurrentTimeMillis > 0 && tJKeyValueStorage != null) {
                    tJKeyValueStorage.setValue("pref_purchase_last_time", Long.valueOf(jCurrentTimeMillis));
                }
                double d3 = d;
                if (d3 > 0.0d && tJKeyValueStorage != null) {
                    tJKeyValueStorage.setValue("pref_purchase_last_price", Double.valueOf(d3));
                }
                a = upperCase;
                if (upperCase.length() != 0 && tJKeyValueStorage != null) {
                    tJKeyValueStorage.setValue("pref_purchase_currency", a);
                }
                TapjoyLog.i("TrackPurchase called");
                return;
            }
        }
        TapjoyLog.e("Invalid currency code");
    }
}
