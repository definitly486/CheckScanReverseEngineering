package yads;

import defpackage.u96;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class ye3 {
    public static final List e = u96.i(e75.DSP_IMPRESSION_TRACKING_START, e75.IMPRESSION_TRACKING_START);
    public static final List f = u96.i(e75.DSP_IMPRESSION_TRACKING_SUCCESS, e75.IMPRESSION_TRACKING_SUCCESS);
    public final ze3 a;
    public final Map b;
    public boolean c;
    public boolean d;

    public ye3(ze3 ze3Var) {
        this.a = ze3Var;
        Map mapSingletonMap = Collections.singletonMap("failure_tracked", Boolean.FALSE);
        mapSingletonMap.getClass();
        this.b = mapSingletonMap;
    }
}
