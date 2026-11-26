package androidx.camera.camera2.pipe.core;

import defpackage.aq5;
import defpackage.av0;
import defpackage.bm3;
import defpackage.c32;
import defpackage.dm3;
import defpackage.e02;
import defpackage.fm3;
import defpackage.j59;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.rk3;
import defpackage.sj0;
import defpackage.y22;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AutoCloseables {
    public static final AutoCloseables INSTANCE = new AutoCloseables();

    private AutoCloseables() {
    }

    private final <T extends AutoCloseable, R> Object useEachAsync$$forInline(y22 y22Var, List<? extends T> list, dm3<? super y22, ? super T, ? super e02<? super R>, ? extends Object> dm3Var, e02<? super List<? extends mk2<? extends R>>> e02Var) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(av0.a(y22Var, null, c32.UNDISPATCHED, new AutoCloseables$useEachAsync$$inlined$useEachIndexedAsync$1(list.get(i), i, null, dm3Var), 1));
        }
        return arrayList;
    }

    public final <T extends AutoCloseable> void useEach(List<? extends T> list, nl3<? super T, j59> nl3Var) {
        list.getClass();
        nl3Var.getClass();
        int i = 0;
        while (i < list.size()) {
            try {
                T t = list.get(i);
                i++;
                try {
                    nl3Var.invoke(t);
                    j59 j59Var = j59.a;
                    aq5.c(t, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        aq5.c(t, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    while (i < list.size()) {
                        int i2 = i + 1;
                        try {
                            rk3.d(list.get(i));
                        } catch (Throwable th5) {
                            sj0.c(th3, th5);
                        }
                        i = i2;
                    }
                    throw th4;
                }
            }
        }
        while (i < list.size()) {
            int i3 = i + 1;
            try {
                rk3.d(list.get(i));
            } catch (Throwable unused) {
            }
            i = i3;
        }
    }

    public final <T extends AutoCloseable, R> Object useEachAsync(y22 y22Var, List<? extends T> list, dm3<? super y22, ? super T, ? super e02<? super R>, ? extends Object> dm3Var, e02<? super List<? extends mk2<? extends R>>> e02Var) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(av0.a(y22Var, null, c32.UNDISPATCHED, new AutoCloseables$useEachAsync$$inlined$useEachIndexedAsync$1(list.get(i), i, null, dm3Var), 1));
        }
        return arrayList;
    }

    public final <T extends AutoCloseable> void useEachIndexed(List<? extends T> list, bm3<? super Integer, ? super T, j59> bm3Var) {
        int i;
        Throwable th;
        list.getClass();
        bm3Var.getClass();
        int i2 = 0;
        while (i2 < list.size()) {
            try {
                T t = list.get(i2);
                i = i2 + 1;
                try {
                    bm3Var.invoke(Integer.valueOf(i2), t);
                    j59 j59Var = j59.a;
                    try {
                        aq5.c(t, null);
                        i2 = i;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            throw th;
                        } catch (Throwable th3) {
                            while (i < list.size()) {
                                int i3 = i + 1;
                                try {
                                    rk3.d(list.get(i));
                                } catch (Throwable th4) {
                                    sj0.c(th, th4);
                                }
                                i = i3;
                            }
                            throw th3;
                        }
                    }
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        aq5.c(t, th5);
                        throw th6;
                    }
                }
            } catch (Throwable th7) {
                i = i2;
                th = th7;
            }
        }
        while (i2 < list.size()) {
            int i4 = i2 + 1;
            try {
                rk3.d(list.get(i2));
            } catch (Throwable unused) {
            }
            i2 = i4;
        }
    }

    public final <T extends AutoCloseable, R> List<mk2<R>> useEachIndexedAsync(y22 y22Var, List<? extends T> list, fm3<? super y22, ? super Integer, ? super T, ? super e02<? super R>, ? extends Object> fm3Var) {
        y22Var.getClass();
        list.getClass();
        fm3Var.getClass();
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(av0.a(y22Var, null, c32.UNDISPATCHED, new AutoCloseables$useEachIndexedAsync$deferred$1(list.get(i), fm3Var, i, null), 1));
        }
        return arrayList;
    }
}
