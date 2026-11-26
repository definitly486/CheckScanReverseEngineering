package com.google.zxing;

/* JADX INFO: loaded from: classes4.dex */
public final class FormatException extends ReaderException {
    public static final FormatException d;

    static {
        FormatException formatException = new FormatException();
        d = formatException;
        formatException.setStackTrace(ReaderException.c);
    }

    private FormatException() {
    }

    public static FormatException a() {
        return ReaderException.b ? new FormatException() : d;
    }
}
