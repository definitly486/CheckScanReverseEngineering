package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import java.util.ArrayList;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1463f implements u2 {
    public final u2[] a;
    public final String b;

    public C1463f(u2... u2VarArr) {
        this.a = u2VarArr;
        StringBuilder sb = new StringBuilder("ALL");
        ArrayList arrayList = new ArrayList(u2VarArr.length);
        for (u2 u2Var : u2VarArr) {
            arrayList.add(u2Var.a());
        }
        sb.append(arrayList);
        this.b = sb.toString();
    }

    @Override // io.appmetrica.analytics.push.impl.u2
    public final boolean a(t2 t2Var) {
        for (u2 u2Var : this.a) {
            boolean zA = u2Var.a(t2Var);
            PublicLogger.INSTANCE.info(u2Var.a() + " provider: " + t2Var.a + ", shouldSend: " + zA, new Object[0]);
            if (!zA) {
                return false;
            }
        }
        return true;
    }

    @Override // io.appmetrica.analytics.push.impl.u2
    public final String a() {
        return this.b;
    }
}
