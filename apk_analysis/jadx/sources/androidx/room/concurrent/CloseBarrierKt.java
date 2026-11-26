package androidx.room.concurrent;

import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes3.dex */
public final class CloseBarrierKt {
    public static final void ifNotClosed(CloseBarrier closeBarrier, ll3<j59> ll3Var) {
        closeBarrier.getClass();
        ll3Var.getClass();
        if (closeBarrier.block$room_runtime()) {
            try {
                ll3Var.invoke();
            } finally {
                closeBarrier.unblock$room_runtime();
            }
        }
    }
}
