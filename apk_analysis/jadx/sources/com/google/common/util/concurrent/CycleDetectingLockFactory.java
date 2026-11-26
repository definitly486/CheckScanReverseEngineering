package com.google.common.util.concurrent;

import com.google.common.collect.n;
import defpackage.c05;
import defpackage.cn1;
import defpackage.d05;
import defpackage.o8;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class CycleDetectingLockFactory {

    public static final class PotentialDeadlockException extends b {
        @Override // java.lang.Throwable
        public final String getMessage() {
            String message = super.getMessage();
            Objects.requireNonNull(message);
            StringBuilder sb = new StringBuilder(message);
            for (Throwable cause = null; cause != null; cause = cause.getCause()) {
                sb.append(", ");
                sb.append(cause.getMessage());
            }
            return sb.toString();
        }
    }

    public class a extends ThreadLocal<List<c>> {
        @Override // java.lang.ThreadLocal
        public final List<c> initialValue() {
            cn1.b(3, "initialArraySize");
            return new ArrayList(3);
        }
    }

    public static class b extends IllegalStateException {
        static {
            n.m(3, CycleDetectingLockFactory.class.getName(), b.class.getName(), c.class.getName());
        }
    }

    public static final class c {
    }

    static {
        c05 c05Var = new c05();
        d05.o oVar = d05.o.WEAK;
        d05.o oVar2 = c05Var.d;
        o8.q("Key strength was already set to %s", oVar2 == null, oVar2);
        oVar.getClass();
        c05Var.d = oVar;
        if (oVar != d05.o.STRONG) {
            c05Var.a = true;
        }
        c05Var.a();
        new a();
    }
}
