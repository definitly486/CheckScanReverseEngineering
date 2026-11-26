package io.appmetrica.analytics.impl;

import androidx.fragment.app.FragmentTransaction;
import defpackage.yr;
import java.util.Set;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.no, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1137no {
    public static final Set a;

    static {
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        a = yr.k0(new Integer[]{42, 8224, 6145, 0, 40977, 41000, Integer.valueOf(FragmentTransaction.TRANSIT_FRAGMENT_OPEN), 40976});
    }

    public static final Set a() {
        return a;
    }
}
