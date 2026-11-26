package com.bumptech.glide.load;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class HttpException extends IOException {
    public HttpException(String str, IOException iOException, int i) {
        super(str + ", status code: " + i, iOException);
    }
}
