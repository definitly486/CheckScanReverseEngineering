package io.appmetrica.analytics.impl;

import defpackage.jh2;
import defpackage.ra8;
import defpackage.ta8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class E6 implements Qf {
    public static final D6 b = new D6();
    public final Qf a;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ E6(Qf qf, int i, jh2 jh2Var) {
        if ((i & 1) != 0) {
            b.getClass();
            qf = D6.a();
        }
        this(qf);
    }

    public final boolean a(String str) {
        try {
            String strA = this.a.a();
            if (strA != null && strA.length() > 0) {
                if (ra8.u(strA, StringUtils.PROCESS_POSTFIX_DELIMITER + str, false)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public final boolean b() {
        try {
            String strA = this.a.a();
            return (strA == null || strA.length() <= 0 || ta8.D(strA, StringUtils.PROCESS_POSTFIX_DELIMITER, false)) ? false : true;
        } catch (Throwable unused) {
        }
    }

    public E6(Qf qf) {
        this.a = qf;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public E6() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // io.appmetrica.analytics.impl.Qf
    public final String a() {
        return this.a.a();
    }
}
