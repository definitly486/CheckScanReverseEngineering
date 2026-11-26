package io.appmetrica.analytics.impl;

import defpackage.b36;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.r5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1221r5 implements Ko {
    public final List a;

    public C1221r5(List<? extends b36<String, ? extends Ko>> list) {
        this.a = list;
    }

    @Override // io.appmetrica.analytics.impl.Ko
    public final void a(String str) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Ko) ((b36) it.next()).c).a(str);
        }
    }

    @Override // io.appmetrica.analytics.impl.Ko
    public final String b() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            String strB = ((Ko) ((b36) it.next()).c).b();
            if (strB != null && strB.length() > 0) {
                return strB;
            }
        }
        return null;
    }

    @Override // io.appmetrica.analytics.impl.Ko
    public final void flushAsync() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Ko) ((b36) it.next()).c).flushAsync();
        }
    }

    @Override // io.appmetrica.analytics.impl.Ko
    public final void a() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Ko) ((b36) it.next()).c).a();
        }
    }
}
