package com.google.zxing;

/* JADX INFO: loaded from: classes4.dex */
public final class NotFoundException extends ReaderException {
    public static final NotFoundException d;

    static {
        NotFoundException notFoundException = new NotFoundException();
        d = notFoundException;
        notFoundException.setStackTrace(ReaderException.c);
    }

    private NotFoundException() {
    }
}
