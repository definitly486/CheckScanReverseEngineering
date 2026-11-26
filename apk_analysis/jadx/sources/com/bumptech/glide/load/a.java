package com.bumptech.glide.load;

import defpackage.ax0;
import defpackage.i07;
import defpackage.pr;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class a {
    public static int a(ArrayList arrayList, InputStream inputStream, pr prVar) throws IOException {
        if (inputStream != null) {
            if (!inputStream.markSupported()) {
                inputStream = new i07(inputStream, prVar);
            }
            inputStream.mark(5242880);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                try {
                    int iA = ((ImageHeaderParser) arrayList.get(i)).a(inputStream, prVar);
                    inputStream.reset();
                    if (iA != -1) {
                        return iA;
                    }
                } catch (Throwable th) {
                    inputStream.reset();
                    throw th;
                }
            }
        }
        return -1;
    }

    public static ImageHeaderParser.ImageType b(ArrayList arrayList, InputStream inputStream, pr prVar) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new i07(inputStream, prVar);
        }
        inputStream.mark(5242880);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            try {
                ImageHeaderParser.ImageType imageTypeD = ((ImageHeaderParser) arrayList.get(i)).d(inputStream);
                inputStream.reset();
                if (imageTypeD != ImageHeaderParser.ImageType.UNKNOWN) {
                    return imageTypeD;
                }
            } catch (Throwable th) {
                inputStream.reset();
                throw th;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    public static ImageHeaderParser.ImageType c(ArrayList arrayList, ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            try {
                ImageHeaderParser.ImageType imageTypeE = ((ImageHeaderParser) arrayList.get(i)).e(byteBuffer);
                AtomicReference<byte[]> atomicReference = ax0.a;
                if (imageTypeE != ImageHeaderParser.ImageType.UNKNOWN) {
                    return imageTypeE;
                }
            } catch (Throwable th) {
                AtomicReference<byte[]> atomicReference2 = ax0.a;
                throw th;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
