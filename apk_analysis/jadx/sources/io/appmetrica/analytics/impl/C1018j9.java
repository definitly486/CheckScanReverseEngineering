package io.appmetrica.analytics.impl;

import java.util.HashMap;
import java.util.LinkedList;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.j9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1018j9 extends Tf {
    public final C1437zi a;
    public final HashMap b;
    public final C4 c;

    public C1018j9(C0989i5 c0989i5) {
        C1437zi c1437zi = new C1437zi(c0989i5);
        this.a = c1437zi;
        this.c = new C4(c1437zi);
        this.b = a(c0989i5);
    }

    public final HashMap a(C0989i5 c0989i5) {
        HashMap map = new HashMap();
        map.put(EnumC1176pb.EVENT_TYPE_ACTIVATION, new C0957h(this.a, c0989i5.b));
        map.put(EnumC1176pb.EVENT_TYPE_START, new Ul(this.a));
        map.put(EnumC1176pb.EVENT_TYPE_REGULAR, new Jg(this.a));
        C1355wb c1355wb = new C1355wb(this.a);
        map.put(EnumC1176pb.EVENT_TYPE_EXCEPTION_USER_PROTOBUF, c1355wb);
        map.put(EnumC1176pb.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF, c1355wb);
        map.put(EnumC1176pb.EVENT_TYPE_SEND_REFERRER, c1355wb);
        map.put(EnumC1176pb.EVENT_TYPE_CUSTOM_EVENT, c1355wb);
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_SET_SESSION_EXTRA;
        C1437zi c1437zi = this.a;
        map.put(enumC1176pb, new Pl(c1437zi, c1437zi.t));
        map.put(EnumC1176pb.EVENT_TYPE_APP_OPEN, new Qg(this.a));
        map.put(EnumC1176pb.EVENT_TYPE_PURGE_BUFFER, new C0922fg(this.a));
        map.put(EnumC1176pb.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF, new F6(this.a));
        map.put(EnumC1176pb.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF, new Jf(this.a));
        map.put(EnumC1176pb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE, new C0982ho(this.a));
        map.put(EnumC1176pb.EVENT_TYPE_PREV_SESSION_EXCEPTION_UNHANDLED_FROM_FILE, new Kf(this.a));
        map.put(EnumC1176pb.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF, new C0956go(this.a));
        map.put(EnumC1176pb.EVENT_TYPE_ANR, c1355wb);
        EnumC1176pb enumC1176pb2 = EnumC1176pb.EVENT_TYPE_APP_ENVIRONMENT_UPDATED;
        C1437zi c1437zi2 = this.a;
        map.put(enumC1176pb2, new Pl(c1437zi2, c1437zi2.e));
        EnumC1176pb enumC1176pb3 = EnumC1176pb.EVENT_TYPE_APP_ENVIRONMENT_CLEARED;
        C1437zi c1437zi3 = this.a;
        map.put(enumC1176pb3, new Pl(c1437zi3, c1437zi3.f));
        map.put(EnumC1176pb.EVENT_TYPE_SEND_USER_PROFILE, c1355wb);
        EnumC1176pb enumC1176pb4 = EnumC1176pb.EVENT_TYPE_SET_USER_PROFILE_ID;
        C1437zi c1437zi4 = this.a;
        map.put(enumC1176pb4, new Pl(c1437zi4, c1437zi4.k));
        map.put(EnumC1176pb.EVENT_TYPE_SEND_REVENUE_EVENT, c1355wb);
        map.put(EnumC1176pb.EVENT_TYPE_SEND_AD_REVENUE_EVENT, c1355wb);
        map.put(EnumC1176pb.EVENT_TYPE_CLEANUP, c1355wb);
        map.put(EnumC1176pb.EVENT_TYPE_SEND_ECOMMERCE_EVENT, c1355wb);
        map.put(EnumC1176pb.EVENT_TYPE_WEBVIEW_SYNC, c1355wb);
        map.put(EnumC1176pb.EVENT_CLIENT_EXTERNAL_ATTRIBUTION, new R9(this.a));
        return map;
    }

    public final void a(EnumC1176pb enumC1176pb, Ja ja) {
        this.b.put(enumC1176pb, ja);
    }

    public final C1437zi a() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.impl.Tf
    public final AbstractC0993i9 a(int i) {
        LinkedList linkedList = new LinkedList();
        EnumC1176pb enumC1176pbA = EnumC1176pb.a(i);
        C4 c4 = this.c;
        if (c4 != null) {
            c4.a(enumC1176pbA, linkedList);
        }
        Ja ja = (Ja) this.b.get(enumC1176pbA);
        if (ja != null) {
            ja.a(linkedList);
        }
        return new C0967h9(linkedList);
    }

    public final Ja a(EnumC1176pb enumC1176pb) {
        return (Ja) this.b.get(enumC1176pb);
    }
}
