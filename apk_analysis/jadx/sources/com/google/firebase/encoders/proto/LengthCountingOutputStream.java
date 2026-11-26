package com.google.firebase.encoders.proto;

import defpackage.v93;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
final class LengthCountingOutputStream extends OutputStream {
    private long length = 0;

    public long getLength() {
        return this.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            v93.b();
        } else {
            this.length += (long) i2;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.length += (long) bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.length++;
    }
}
