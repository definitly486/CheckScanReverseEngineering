package com.tapjoy.internal;

import android.util.Base64;
import defpackage.cc;
import defpackage.fg;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes4.dex */
public final class e {
    public final String a;
    public final int b;
    public final int c;
    public final String d;
    public final String e;

    public e(String str) {
        int length = str.length();
        if (!str.matches("[A-Za-z0-9\\-_]*") || length < 60 || (length & 3) != 0) {
            fg.c("The given API key was malformed.");
            throw null;
        }
        try {
            byte[] bArrDecode = Base64.decode(str, 8);
            int length2 = bArrDecode.length;
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArrDecode);
            byteBufferWrap.order(ByteOrder.BIG_ENDIAN);
            int length3 = bArrDecode.length - 4;
            int i = byteBufferWrap.getInt(length3);
            CRC32 crc32 = new CRC32();
            crc32.update(bArrDecode, 0, length3);
            if (i != ((int) crc32.getValue())) {
                fg.c("The given API key was invalid.");
                throw null;
            }
            this.a = str;
            this.d = new UUID(byteBufferWrap.getLong(0), byteBufferWrap.getLong(8)).toString();
            byte b = byteBufferWrap.get(16);
            this.b = b;
            byte b2 = byteBufferWrap.get(17);
            int[] iArr = new int[1];
            System.arraycopy(c0.a, 0, iArr, 0, 1);
            int i2 = iArr[0];
            if (i2 == 0) {
                throw null;
            }
            int i3 = 2 == b2 ? i2 : 0;
            this.c = i3;
            this.e = str.substring(24, 44);
            if (b == 2 && i3 == 1) {
                if (length2 >= 57) {
                    return;
                }
                fg.c("The given API key was invalid.");
                throw null;
            }
            if (b == 1) {
                return;
            }
            fg.c("The given API key was not supported.");
            throw null;
        } catch (IllegalArgumentException e) {
            cc.e("The given API key was malformed.", e);
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            return this.a.equals(((e) obj).a);
        }
        return false;
    }

    public final String toString() {
        return this.a;
    }
}
