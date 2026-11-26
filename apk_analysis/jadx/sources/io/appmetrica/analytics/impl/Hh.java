package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.validation.NonEmptyStringValidator;
import io.appmetrica.analytics.coreutils.internal.validation.NonNullValidator;

/* JADX INFO: loaded from: classes5.dex */
public final class Hh {
    public final Sn a = new Sn(new NonEmptyStringValidator("Event name"));
    public final Sn b = new Sn(new NonEmptyStringValidator("Error message"));
    public final Sn c = new Sn(new NonEmptyStringValidator("Error identifier"));
    public final Sn d = new Sn(new NonNullValidator("Unhandled exception"));
    public final Sn e = new Sn(new NonNullValidator("Throwable"));
    public final Sn f = new Sn(new NonNullValidator("User profile"));
    public final Sn g = new Sn(new NonNullValidator("Revenue"));
    public final Sn h = new Sn(new NonNullValidator("AdRevenue"));
    public final Sn i = new Sn(new NonNullValidator("ECommerceEvent"));
    public final Sn j = new Sn(new NonNullValidator("ANR all threads"));
}
