package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.content.Intent;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.sn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1265sn {
    public final C0 a;
    public final Ro b;
    public final C1138o c;
    public final C1186pl d;
    public final P5 e;
    public final C1226ra f;

    public C1265sn(C0 c0, Ro ro) {
        this(c0, ro, C1169p4.l().a(), C1169p4.l().o(), C1169p4.l().h(), C1169p4.l().k());
    }

    public static Intent a(Activity activity) {
        return (Intent) SystemServiceUtils.accessSystemServiceSafely(activity, "getting intent", "activity", new defpackage.m2(9));
    }

    public static final Intent b(Activity activity) {
        return activity.getIntent();
    }

    public C1265sn(C0 c0, Ro ro, C1138o c1138o, C1186pl c1186pl, P5 p5, C1226ra c1226ra) {
        this.a = c0;
        this.b = ro;
        this.c = c1138o;
        this.d = c1186pl;
        this.e = p5;
        this.f = c1226ra;
    }
}
