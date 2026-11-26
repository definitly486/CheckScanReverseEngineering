package androidx.datastore.core;

import defpackage.nl3;
import defpackage.yg5;

/* JADX INFO: loaded from: classes2.dex */
public final class MutexUtilsKt {
    public static final <R> R withTryLock(yg5 yg5Var, Object obj, nl3<? super Boolean, ? extends R> nl3Var) {
        yg5Var.getClass();
        nl3Var.getClass();
        boolean zTryLock = yg5Var.tryLock(obj);
        try {
            return nl3Var.invoke(Boolean.valueOf(zTryLock));
        } finally {
            if (zTryLock) {
                yg5Var.unlock(obj);
            }
        }
    }

    public static Object withTryLock$default(yg5 yg5Var, Object obj, nl3 nl3Var, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        yg5Var.getClass();
        nl3Var.getClass();
        boolean zTryLock = yg5Var.tryLock(obj);
        try {
            return nl3Var.invoke(Boolean.valueOf(zTryLock));
        } finally {
            if (zTryLock) {
                yg5Var.unlock(obj);
            }
        }
    }
}
