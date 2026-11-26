package com.google.android.gms.internal.mlkit_vision_barcode;

/* JADX INFO: loaded from: classes4.dex */
public final class d {
    public static final d b = new d(new a("Failure occurred while trying to finish a future."));
    public final Throwable a;

    public class a extends Throwable {
        @Override // java.lang.Throwable
        public final synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    public d(Throwable th) {
        th.getClass();
        this.a = th;
    }
}
