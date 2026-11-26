package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
public final class e {
    public static final e b = new e(new a("Failure occurred while trying to finish a future."));
    public final Throwable a;

    public class a extends Throwable {
        @Override // java.lang.Throwable
        public final Throwable fillInStackTrace() {
            return this;
        }
    }

    public e(Throwable th) {
        th.getClass();
        this.a = th;
    }
}
