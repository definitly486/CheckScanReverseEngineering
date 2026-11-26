package com.tapjoy;

import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public class TJUserRevenueConversion {
    public final String a;
    public final Date b;
    public final Double c;
    public final String d;

    public TJUserRevenueConversion(String str, Date date, Double d, String str2) {
        this.a = str;
        this.b = date;
        this.c = d;
        this.d = str2;
    }

    public Date getDate() {
        return this.b;
    }

    public String getId() {
        return this.a;
    }

    public Double getRevenue() {
        return this.c;
    }

    public String getRevenueCurrencyCode() {
        return this.d;
    }
}
