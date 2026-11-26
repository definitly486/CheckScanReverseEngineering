package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.nl3;

/* JADX INFO: loaded from: classes5.dex */
public final class Ud {
    public final nl3 a;

    public Ud(Zd zd) {
        this.a = zd;
    }

    public final Vd a(Context context, Vg vg) {
        return new Vd(context, vg, this.a, new defpackage.i2(4), EnumC1176pb.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF, "actual", new B6());
    }

    public final Vd b(Context context, Vg vg) {
        return new Vd(context, vg, this.a, new defpackage.j2(4), EnumC1176pb.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF, "prev session", new B6());
    }

    public static final InterfaceC1289tl a(J0 j0) {
        return new Sd(j0.f.d);
    }

    public static final InterfaceC1289tl b(J0 j0) {
        return new C0777a0();
    }
}
