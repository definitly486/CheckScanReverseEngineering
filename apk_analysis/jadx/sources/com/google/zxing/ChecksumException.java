package com.google.zxing;

/* JADX INFO: loaded from: classes4.dex */
public final class ChecksumException extends ReaderException {
    public static final ChecksumException d;

    static {
        ChecksumException checksumException = new ChecksumException();
        d = checksumException;
        checksumException.setStackTrace(ReaderException.c);
    }

    private ChecksumException() {
    }

    public static ChecksumException a() {
        return ReaderException.b ? new ChecksumException() : d;
    }
}
