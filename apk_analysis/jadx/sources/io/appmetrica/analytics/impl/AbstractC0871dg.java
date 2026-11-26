package io.appmetrica.analytics.impl;

import android.util.SparseArray;
import java.util.Calendar;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.dg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC0871dg {
    public static final Map a;
    public static final SparseArray b;
    public static final Map c;
    public static final Map d;

    static {
        HashMap map = new HashMap();
        EnumC1160ol enumC1160ol = EnumC1160ol.FOREGROUND;
        map.put(enumC1160ol, 0);
        EnumC1160ol enumC1160ol2 = EnumC1160ol.BACKGROUND;
        map.put(enumC1160ol2, 1);
        a = Collections.unmodifiableMap(map);
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, enumC1160ol);
        sparseArray.put(1, enumC1160ol2);
        b = sparseArray;
        HashMap map2 = new HashMap();
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_INIT;
        map2.put(enumC1176pb, 1);
        EnumC1176pb enumC1176pb2 = EnumC1176pb.EVENT_TYPE_REGULAR;
        map2.put(enumC1176pb2, 4);
        EnumC1176pb enumC1176pb3 = EnumC1176pb.EVENT_TYPE_SEND_REFERRER;
        map2.put(enumC1176pb3, 5);
        EnumC1176pb enumC1176pb4 = EnumC1176pb.EVENT_TYPE_ALIVE;
        map2.put(enumC1176pb4, 7);
        EnumC1176pb enumC1176pb5 = EnumC1176pb.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF;
        map2.put(enumC1176pb5, 26);
        EnumC1176pb enumC1176pb6 = EnumC1176pb.EVENT_TYPE_PREV_SESSION_EXCEPTION_UNHANDLED_FROM_FILE;
        map2.put(enumC1176pb6, 26);
        EnumC1176pb enumC1176pb7 = EnumC1176pb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE;
        map2.put(enumC1176pb7, 26);
        EnumC1176pb enumC1176pb8 = EnumC1176pb.EVENT_TYPE_ANR;
        map2.put(enumC1176pb8, 25);
        EnumC1176pb enumC1176pb9 = EnumC1176pb.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF;
        map2.put(enumC1176pb9, 26);
        EnumC1176pb enumC1176pb10 = EnumC1176pb.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF;
        map2.put(enumC1176pb10, 26);
        EnumC1176pb enumC1176pb11 = EnumC1176pb.EVENT_TYPE_EXCEPTION_USER_PROTOBUF;
        map2.put(enumC1176pb11, 27);
        EnumC1176pb enumC1176pb12 = EnumC1176pb.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF;
        map2.put(enumC1176pb12, 27);
        EnumC1176pb enumC1176pb13 = EnumC1176pb.EVENT_TYPE_FIRST_ACTIVATION;
        map2.put(enumC1176pb13, 13);
        EnumC1176pb enumC1176pb14 = EnumC1176pb.EVENT_TYPE_START;
        map2.put(enumC1176pb14, 2);
        EnumC1176pb enumC1176pb15 = EnumC1176pb.EVENT_TYPE_APP_OPEN;
        map2.put(enumC1176pb15, 16);
        EnumC1176pb enumC1176pb16 = EnumC1176pb.EVENT_TYPE_APP_UPDATE;
        map2.put(enumC1176pb16, 17);
        EnumC1176pb enumC1176pb17 = EnumC1176pb.EVENT_TYPE_PERMISSIONS;
        map2.put(enumC1176pb17, 18);
        EnumC1176pb enumC1176pb18 = EnumC1176pb.EVENT_TYPE_APP_FEATURES;
        map2.put(enumC1176pb18, 19);
        EnumC1176pb enumC1176pb19 = EnumC1176pb.EVENT_TYPE_SEND_USER_PROFILE;
        map2.put(enumC1176pb19, 20);
        EnumC1176pb enumC1176pb20 = EnumC1176pb.EVENT_TYPE_SEND_REVENUE_EVENT;
        map2.put(enumC1176pb20, 21);
        EnumC1176pb enumC1176pb21 = EnumC1176pb.EVENT_TYPE_SEND_AD_REVENUE_EVENT;
        map2.put(enumC1176pb21, 40);
        EnumC1176pb enumC1176pb22 = EnumC1176pb.EVENT_TYPE_SEND_ECOMMERCE_EVENT;
        map2.put(enumC1176pb22, 35);
        map2.put(EnumC1176pb.EVENT_TYPE_CLEANUP, 29);
        EnumC1176pb enumC1176pb23 = EnumC1176pb.EVENT_TYPE_WEBVIEW_SYNC;
        map2.put(enumC1176pb23, 38);
        EnumC1176pb enumC1176pb24 = EnumC1176pb.EVENT_CLIENT_EXTERNAL_ATTRIBUTION;
        map2.put(enumC1176pb24, 42);
        c = Collections.unmodifiableMap(map2);
        HashMap map3 = new HashMap();
        H8 h8 = new H8();
        N8 n8 = new N8(new T8());
        I8 i8 = new I8();
        C1168p3 c1168p3 = new C1168p3(new T8());
        J6 j6 = new J6(c1168p3, new C1136nn(), new T8());
        C0827bo c0827bo = new C0827bo(new T8());
        Zf zf = new Zf();
        C0915f9 c0915f9A = C0941g9.a();
        c0915f9A.b = zf;
        c0915f9A.c = zf;
        C0941g9 c0941g9 = new C0941g9(c0915f9A);
        C0915f9 c0915f9A2 = C0941g9.a();
        c0915f9A2.b = n8;
        C0941g9 c0941g10 = new C0941g9(c0915f9A2);
        C0915f9 c0915f9A3 = C0941g9.a();
        c0915f9A3.b = c1168p3;
        C0941g9 c0941g11 = new C0941g9(c0915f9A3);
        C0915f9 c0915f9A4 = C0941g9.a();
        c0915f9A4.b = c0827bo;
        C0941g9 c0941g12 = new C0941g9(c0915f9A4);
        C0915f9 c0915f9A5 = C0941g9.a();
        c0915f9A5.a = h8;
        C0941g9 c0941g13 = new C0941g9(c0915f9A5);
        C0915f9 c0915f9A6 = C0941g9.a();
        c0915f9A6.b = new Do(new N8());
        C0941g9 c0941g14 = new C0941g9(c0915f9A6);
        map3.put(enumC1176pb2, c0941g10);
        C0915f9 c0915f9A7 = C0941g9.a();
        c0915f9A7.b = new C0819bg();
        map3.put(enumC1176pb3, new C0941g9(c0915f9A7));
        C0915f9 c0915f9A8 = C0941g9.a();
        c0915f9A8.a = h8;
        c0915f9A8.b = i8;
        c0915f9A8.e = new C1017j8();
        c0915f9A8.f = new C1043k8();
        map3.put(enumC1176pb4, new C0941g9(c0915f9A8));
        map3.put(enumC1176pb9, c0941g9);
        map3.put(enumC1176pb10, c0941g9);
        map3.put(enumC1176pb11, c0941g11);
        map3.put(enumC1176pb12, c0941g11);
        map3.put(enumC1176pb5, c0941g11);
        map3.put(enumC1176pb6, c0941g11);
        map3.put(enumC1176pb7, c0941g11);
        map3.put(enumC1176pb8, c0941g11);
        C0915f9 c0915f9A9 = C0941g9.a();
        c0915f9A9.a = new H8();
        c0915f9A9.b = c1168p3;
        map3.put(enumC1176pb14, new C0941g9(c0915f9A9));
        EnumC1176pb enumC1176pb25 = EnumC1176pb.EVENT_TYPE_CUSTOM_EVENT;
        C0915f9 c0915f9A10 = C0941g9.a();
        c0915f9A10.b = j6;
        c0915f9A10.d = new C0845cg();
        map3.put(enumC1176pb25, new C0941g9(c0915f9A10));
        map3.put(enumC1176pb15, c0941g10);
        map3.put(enumC1176pb17, c0941g13);
        map3.put(enumC1176pb18, c0941g13);
        map3.put(enumC1176pb19, c0941g11);
        map3.put(enumC1176pb20, c0941g11);
        map3.put(enumC1176pb21, c0941g11);
        map3.put(enumC1176pb22, c0941g12);
        map3.put(enumC1176pb, c0941g14);
        map3.put(enumC1176pb16, c0941g14);
        map3.put(enumC1176pb13, c0941g10);
        map3.put(enumC1176pb23, c0941g10);
        map3.put(enumC1176pb24, c0941g11);
        d = Collections.unmodifiableMap(map3);
    }

    public static C1303u9 a(Long l, Long l2, Boolean bool) {
        C1303u9 c1303u9 = new C1303u9();
        if (l != null) {
            c1303u9.a = l.longValue();
            c1303u9.b = ((GregorianCalendar) Calendar.getInstance()).getTimeZone().getOffset(l.longValue() * 1000) / 1000;
        }
        if (l2 != null) {
            c1303u9.c = l2.longValue();
        }
        if (bool != null) {
            c1303u9.d = bool.booleanValue();
        }
        return c1303u9;
    }
}
