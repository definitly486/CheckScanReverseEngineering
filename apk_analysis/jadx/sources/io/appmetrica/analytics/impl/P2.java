package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.validation.NonEmptyStringValidator;
import io.appmetrica.analytics.coreutils.internal.validation.NonNullValidator;

/* JADX INFO: loaded from: classes5.dex */
public final class P2 {
    public final C0983i a;
    public final Sn b = new Sn(new NonNullValidator("Config"));
    public final Sn c = new Sn(new NonNullValidator("Activity"));
    public final Sn d = new Sn(new NonNullValidator("Intent"));
    public final Sn e = new Sn(new NonNullValidator("Application"));
    public final Sn f = new Sn(new NonNullValidator("Context"));
    public final Sn g = new Sn(new NonNullValidator("Deeplink listener"));
    public final Sn h = new Sn(new NonNullValidator("Reporter Config"));
    public final Sn i = new Sn(new NonEmptyStringValidator("Deeplink"));
    public final Sn j = new Sn(new C1035k0());
    public final Sn k = new Sn(new NonNullValidator("Key"));
    public final Sn l = new Sn(new NonNullValidator("WebView"));
    public final NonEmptyStringValidator m = new NonEmptyStringValidator("value");
    public final NonEmptyStringValidator n = new NonEmptyStringValidator("name");
    public final Sn o = new Sn(new NonNullValidator("AppMetricaDeviceIdentifiers callback"));
    public final Sn p = new Sn(new NonNullValidator("ANR listener"));
    public final Sn q = new Sn(new NonNullValidator("External attribution"));
    public final Sn r = new Sn(new NonEmptyStringValidator("Event name"));
    public final Sn s = new Sn(new NonEmptyStringValidator("Error message"));
    public final Sn t = new Sn(new NonEmptyStringValidator("Error identifier"));
    public final Sn u;
    public final Sn v;
    public final Sn w;
    public final Sn x;
    public final Sn y;
    public final Sn z;

    public P2(C0 c0) {
        this.a = new C0983i(c0);
        new Sn(new NonNullValidator("Unhandled exception"));
        this.u = new Sn(new NonNullValidator("Throwable"));
        this.v = new Sn(new NonNullValidator("User profile"));
        this.w = new Sn(new NonNullValidator("Revenue"));
        this.x = new Sn(new NonNullValidator("AdRevenue"));
        this.y = new Sn(new NonNullValidator("ECommerceEvent"));
        this.z = new Sn(new NonNullValidator("Anr all threads"));
    }
}
