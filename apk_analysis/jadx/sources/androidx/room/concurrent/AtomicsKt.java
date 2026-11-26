package androidx.room.concurrent;

import defpackage.j59;
import defpackage.nl3;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class AtomicsKt {
    public static final Void loop(AtomicInteger atomicInteger, nl3<? super Integer, j59> nl3Var) {
        atomicInteger.getClass();
        nl3Var.getClass();
        while (true) {
            nl3Var.invoke(Integer.valueOf(atomicInteger.get()));
        }
    }
}
