package com.google.zxing;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ReaderException extends Exception {
    public static final boolean b;
    public static final StackTraceElement[] c;

    static {
        b = System.getProperty("surefire.test.class.path") != null;
        c = new StackTraceElement[0];
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return null;
    }
}
