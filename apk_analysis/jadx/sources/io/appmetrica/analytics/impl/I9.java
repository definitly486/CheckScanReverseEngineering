package io.appmetrica.analytics.impl;

import androidx.fragment.app.FragmentTransaction;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public abstract class I9 {
    public static final Set a;
    public static final EnumSet b;
    public static final EnumSet c;
    public static final EnumSet d;
    public static final EnumSet e;
    public static final EnumSet f;
    public static final EnumSet g;
    public static final EnumSet h;
    public static final List i;
    public static final List j;

    static {
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_EXCEPTION_USER_PROTOBUF;
        EnumC1176pb enumC1176pb2 = EnumC1176pb.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF;
        EnumC1176pb enumC1176pb3 = EnumC1176pb.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF;
        EnumC1176pb enumC1176pb4 = EnumC1176pb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE;
        EnumC1176pb enumC1176pb5 = EnumC1176pb.EVENT_TYPE_PREV_SESSION_EXCEPTION_UNHANDLED_FROM_FILE;
        EnumC1176pb enumC1176pb6 = EnumC1176pb.EVENT_TYPE_ANR;
        a = CollectionUtils.unmodifiableSetOf(5892, 5896, 5891, 5889, 5890, 5968);
        EnumC1176pb enumC1176pb7 = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        EnumC1176pb enumC1176pb8 = EnumC1176pb.EVENT_TYPE_PURGE_BUFFER;
        EnumC1176pb enumC1176pb9 = EnumC1176pb.EVENT_TYPE_SEND_REFERRER;
        EnumC1176pb enumC1176pb10 = EnumC1176pb.EVENT_TYPE_APP_ENVIRONMENT_UPDATED;
        EnumC1176pb enumC1176pb11 = EnumC1176pb.EVENT_TYPE_APP_ENVIRONMENT_CLEARED;
        EnumC1176pb enumC1176pb12 = EnumC1176pb.EVENT_TYPE_ACTIVATION;
        EnumC1176pb enumC1176pb13 = EnumC1176pb.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF;
        EnumC1176pb enumC1176pb14 = EnumC1176pb.EVENT_TYPE_SET_SESSION_EXTRA;
        b = EnumSet.of(enumC1176pb7, enumC1176pb8, enumC1176pb9, enumC1176pb10, enumC1176pb11, enumC1176pb12, enumC1176pb13, enumC1176pb5, enumC1176pb14);
        EnumC1176pb enumC1176pb15 = EnumC1176pb.EVENT_TYPE_UPDATE_FOREGROUND_TIME;
        EnumC1176pb enumC1176pb16 = EnumC1176pb.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF;
        c = EnumSet.of(enumC1176pb15, enumC1176pb4, enumC1176pb5, enumC1176pb13, enumC1176pb16);
        EnumC1176pb enumC1176pb17 = EnumC1176pb.EVENT_TYPE_REGULAR;
        d = EnumSet.of(enumC1176pb4, enumC1176pb5, enumC1176pb3, enumC1176pb, enumC1176pb2, enumC1176pb16, enumC1176pb13, enumC1176pb17, EnumC1176pb.EVENT_CLIENT_EXTERNAL_ATTRIBUTION, EnumC1176pb.EVENT_TYPE_SEND_ECOMMERCE_EVENT, EnumC1176pb.EVENT_TYPE_SEND_REVENUE_EVENT, EnumC1176pb.EVENT_TYPE_SEND_AD_REVENUE_EVENT, enumC1176pb8, EnumC1176pb.EVENT_TYPE_INIT, EnumC1176pb.EVENT_TYPE_SEND_USER_PROFILE, EnumC1176pb.EVENT_TYPE_SET_USER_PROFILE_ID, enumC1176pb9, enumC1176pb10, enumC1176pb11, EnumC1176pb.EVENT_TYPE_FIRST_ACTIVATION, EnumC1176pb.EVENT_TYPE_START, EnumC1176pb.EVENT_TYPE_APP_OPEN, EnumC1176pb.EVENT_TYPE_APP_UPDATE, enumC1176pb6);
        e = EnumSet.of(enumC1176pb17);
        f = EnumSet.of(enumC1176pb17);
        g = EnumSet.of(enumC1176pb13);
        h = EnumSet.of(EnumC1176pb.EVENT_TYPE_ALIVE, enumC1176pb8, enumC1176pb14, enumC1176pb5, enumC1176pb13);
        i = Arrays.asList(0, 6145, Integer.valueOf(FragmentTransaction.TRANSIT_FRAGMENT_OPEN), 8224);
        j = Arrays.asList(12290);
    }
}
