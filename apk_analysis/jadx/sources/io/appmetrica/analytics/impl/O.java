package io.appmetrica.analytics.impl;

import defpackage.u96;
import io.appmetrica.analytics.coreutils.internal.toggle.ConjunctiveCompositeThreadSafeToggle;
import io.appmetrica.analytics.coreutils.internal.toggle.OuterStateToggle;
import io.appmetrica.analytics.coreutils.internal.toggle.SavableToggle;

/* JADX INFO: loaded from: classes5.dex */
public final class O {
    public final C1102mf a = Fa.k().y();
    public final SavableToggle b;
    public final OuterStateToggle c;
    public final OuterStateToggle d;
    public final ConjunctiveCompositeThreadSafeToggle e;
    public final ConjunctiveCompositeThreadSafeToggle f;
    public final SavableToggle g;

    public O(C1341vm c1341vm) {
        SavableToggle savableToggle = new SavableToggle("advIdsFromClientApi", new N(this));
        this.b = savableToggle;
        OuterStateToggle outerStateToggle = new OuterStateToggle(false, "GAID-remote-config");
        this.c = outerStateToggle;
        OuterStateToggle outerStateToggle2 = new OuterStateToggle(false, "HOAID-remote-config");
        this.d = outerStateToggle2;
        this.e = new ConjunctiveCompositeThreadSafeToggle(u96.i(savableToggle, outerStateToggle), "GAID");
        this.f = new ConjunctiveCompositeThreadSafeToggle(u96.i(savableToggle, outerStateToggle2), "HOAID");
        this.g = savableToggle;
        a(c1341vm);
    }

    public final L a() {
        M m;
        M m2;
        M m3;
        if (this.e.getActualState()) {
            m = M.ALLOWED;
        } else if (this.b.getActualState()) {
            m = !this.c.getActualState() ? M.FORBIDDEN_BY_REMOTE_CONFIG : M.UNKNOWN;
        } else {
            m = M.FORBIDDEN_BY_CLIENT_CONFIG;
        }
        if (this.f.getActualState()) {
            m2 = M.ALLOWED;
        } else if (this.b.getActualState()) {
            m2 = !this.d.getActualState() ? M.FORBIDDEN_BY_REMOTE_CONFIG : M.UNKNOWN;
        } else {
            m2 = M.FORBIDDEN_BY_CLIENT_CONFIG;
        }
        if (this.g.getActualState()) {
            m3 = M.ALLOWED;
        } else {
            m3 = !this.b.getActualState() ? M.FORBIDDEN_BY_CLIENT_CONFIG : M.UNKNOWN;
        }
        return new L(m, m2, m3);
    }

    public final void a(C1341vm c1341vm) {
        boolean z = c1341vm.p;
        boolean z2 = true;
        this.c.update(!z || c1341vm.n.c);
        OuterStateToggle outerStateToggle = this.d;
        if (z && !c1341vm.n.e) {
            z2 = false;
        }
        outerStateToggle.update(z2);
    }
}
