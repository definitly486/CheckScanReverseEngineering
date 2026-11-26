package androidx.camera.viewfinder.core.impl;

import android.util.Log;
import defpackage.aa4;
import defpackage.ah;
import defpackage.b36;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kt;
import defpackage.nl3;
import defpackage.ot;
import defpackage.vg;
import defpackage.x07;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class RefCounted<T> {
    public static final Companion Companion = new Companion(null);
    private static final b36<j59, Integer> RELEASED;
    private static final String TAG = "RefCounted";
    private static final b36<j59, Integer> UNINITIALIZED;
    private final boolean debugRefCounts;
    private final nl3<T, j59> onRelease;
    private final ot<b36<T, Integer>> refCounted;

    static {
        j59 j59Var = j59.a;
        UNINITIALIZED = new b36<>(j59Var, -1);
        RELEASED = new b36<>(j59Var, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RefCounted(boolean z, nl3<? super T, j59> nl3Var) {
        nl3Var.getClass();
        this.debugRefCounts = z;
        this.onRelease = nl3Var;
        this.refCounted = kt.d(Companion.uninitialized());
    }

    public final T acquire() {
        b36<T, Integer> b36Var;
        T t;
        int iIntValue;
        if (aa4.e(this.refCounted.b, Companion.uninitialized())) {
            ah.f("Ref-count managed object has not yet been initialized. Unable to acquire.");
            return null;
        }
        ot<b36<T, Integer>> otVar = this.refCounted;
        do {
            b36Var = otVar.b;
            if (aa4.e(b36Var, Companion.released())) {
                if (this.debugRefCounts) {
                    Log.d(TAG, "RefCounted@" + String.format("%x", Arrays.copyOf(new Object[]{Integer.valueOf(hashCode())}, 1)) + ".acquire() failure: [refCount: 0]", new Throwable());
                }
                return null;
            }
            t = b36Var.b;
            iIntValue = b36Var.c.intValue() + 1;
        } while (!this.refCounted.a(b36Var, new b36<>(t, Integer.valueOf(iIntValue))));
        if (this.debugRefCounts) {
            StringBuilder sb = new StringBuilder("RefCounted@");
            sb.append(String.format("%x", Arrays.copyOf(new Object[]{Integer.valueOf(hashCode())}, 1)));
            sb.append('<');
            sb.append(x07.a(t.getClass()).f());
            sb.append(">.acquire() success: [refCount: ");
            sb.append(iIntValue);
            sb.append(", value: ");
            Log.d(TAG, vg.d(sb, t, ']'), new Throwable());
        }
        return t;
    }

    public final void initialize(T t) {
        t.getClass();
        if (!this.refCounted.a(Companion.uninitialized(), new b36<>(t, 1))) {
            ah.f("Ref-count managed object has already been initialized.");
            return;
        }
        if (this.debugRefCounts) {
            Log.d(TAG, "RefCounted@" + String.format("%x", Arrays.copyOf(new Object[]{Integer.valueOf(hashCode())}, 1)) + '<' + x07.a(t.getClass()).f() + "> initialized: [refCount: 1, value: " + t + ']', new Throwable());
        }
    }

    public final void release() {
        b36<T, Integer> b36Var;
        Companion companion;
        T t;
        int iIntValue;
        b36<T, Integer> b36VarReleased;
        if (aa4.e(this.refCounted.b, Companion.uninitialized())) {
            ah.f("Ref-count managed object has not yet been initialized. Unable to release.");
            return;
        }
        ot<b36<T, Integer>> otVar = this.refCounted;
        do {
            b36Var = otVar.b;
            companion = Companion;
            if (aa4.e(b36Var, companion.released())) {
                ah.f("Release called more times than initialize + acquire.");
                return;
            } else {
                t = b36Var.b;
                iIntValue = b36Var.c.intValue();
                b36VarReleased = iIntValue == 1 ? companion.released() : new b36<>(t, Integer.valueOf(iIntValue - 1));
            }
        } while (!this.refCounted.a(b36Var, b36VarReleased));
        boolean zE = aa4.e(b36VarReleased, companion.released());
        boolean z = this.debugRefCounts;
        if (zE) {
            if (z) {
                Log.d(TAG, "RefCounted@" + String.format("%x", Arrays.copyOf(new Object[]{Integer.valueOf(hashCode())}, 1)) + '<' + x07.a(t.getClass()).f() + ">.release() (last ref): [refCount: 0, value: " + t + ']', new Throwable());
            }
            this.onRelease.invoke(t);
            return;
        }
        if (z) {
            Log.d(TAG, "RefCounted@" + String.format("%x", Arrays.copyOf(new Object[]{Integer.valueOf(hashCode())}, 1)) + '<' + x07.a(t.getClass()).f() + ">.release(): [refCount: " + (iIntValue - 1) + ", value: " + t + ']', new Throwable());
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final <T> b36<T, Integer> released() {
            b36<T, Integer> b36Var = RefCounted.RELEASED;
            b36Var.getClass();
            return b36Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final <T> b36<T, Integer> uninitialized() {
            b36<T, Integer> b36Var = RefCounted.UNINITIALIZED;
            b36Var.getClass();
            return b36Var;
        }

        private Companion() {
        }
    }

    public /* synthetic */ RefCounted(boolean z, nl3 nl3Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? false : z, nl3Var);
    }
}
