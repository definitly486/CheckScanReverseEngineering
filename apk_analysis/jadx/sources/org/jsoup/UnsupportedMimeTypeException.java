package org.jsoup;

import defpackage.me0;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class UnsupportedMimeTypeException extends IOException {
    @Override // java.lang.Throwable
    public final String toString() {
        return me0.d(new StringBuilder(), super.toString(), ". Mimetype=null, URL=null");
    }
}
