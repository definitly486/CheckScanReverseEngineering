package io.appmetrica.analytics.impl;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public final class Ac implements InterfaceC1298u4 {
    @Override // io.appmetrica.analytics.impl.InterfaceC1298u4
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Bc a(Context context, C1144o5 c1144o5, C0859d4 c0859d4, B4 b4) {
        Eg eg;
        Cc cc = new Cc(c0859d4.b, c0859d4.a);
        Fg fg = new Fg(new Ec());
        synchronized (c1144o5) {
            eg = (Eg) c1144o5.a(cc, b4, fg, c1144o5.a);
        }
        return new Bc(context, eg);
    }
}
