package com.tapjoy.internal;

import com.tapjoy.TJSession;
import com.tapjoy.TapjoyConnectCore;

/* JADX INFO: loaded from: classes4.dex */
public final class v1 {
    public final String a;
    public final Long b;
    public final Long c;
    public final Integer d;
    public final Long e;
    public final Long f;
    public final Integer g;
    public final Integer h;

    public v1() {
        this.a = "";
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        if (TapjoyConnectCore.getInstance().getContext() != null) {
            TJSession tJSession = c.e.c;
            this.a = tJSession.getSessionId();
            this.b = tJSession.getSessionLastLength();
            this.c = tJSession.getSessionLastTime();
            this.d = Integer.valueOf(tJSession.getSessionTotalCount());
            this.e = tJSession.getSessionTotalLength();
            this.f = tJSession.getDuration();
            this.g = Integer.valueOf(tJSession.getSessionWeeklyFrequency());
            this.h = Integer.valueOf(tJSession.getSessionMonthlyFrequency());
        }
    }
}
