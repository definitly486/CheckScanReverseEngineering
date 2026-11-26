package io.appmetrica.analytics.impl;

import defpackage.kn1;
import defpackage.qn1;
import defpackage.u96;
import io.appmetrica.analytics.coreutils.internal.limitation.Trimmer;
import io.appmetrica.analytics.coreutils.internal.validation.Validator;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ln, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1084ln implements InterfaceC1215qo {
    public final ArrayList a;

    public C1084ln(String str, List<String> list, int i, Trimmer<String> trimmer, Validator<String> validator, X2 x2) {
        List listO0 = qn1.o0(qn1.t0(qn1.y0(list)), i);
        ArrayList arrayList = new ArrayList(kn1.q(listO0, 10));
        int i2 = 0;
        for (Object obj : listO0) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                u96.o();
                throw null;
            }
            arrayList.add(new C1110mn(str + '_' + i2, (String) obj, trimmer, validator, x2));
            i2 = i3;
        }
        this.a = arrayList;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1215qo
    public final void a(C1189po c1189po) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((C1110mn) it.next()).a(c1189po);
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1215qo
    public final void a(PublicLogger publicLogger) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((C1110mn) it.next()).e = publicLogger;
        }
    }
}
