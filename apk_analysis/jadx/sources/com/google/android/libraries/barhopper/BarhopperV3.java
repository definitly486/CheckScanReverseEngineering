package com.google.android.libraries.barhopper;

import android.graphics.Bitmap;
import android.util.Log;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzds;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzer;
import defpackage.ah;
import defpackage.fg;
import defpackage.h2;
import defpackage.vc0;
import defpackage.wc0;
import java.io.Closeable;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public class BarhopperV3 implements Closeable {
    public long b;

    public BarhopperV3() {
        System.loadLibrary("barhopper_v3");
    }

    private native void closeNative(long j);

    private native long createNativeWithClientOptions(byte[] bArr);

    public static vc0 g(byte[] bArr) {
        bArr.getClass();
        try {
            return vc0.k(bArr, zzds.zza());
        } catch (zzer e) {
            h2.e("Received unexpected BarhopperResponse buffer: {0}", e);
            return null;
        }
    }

    private native byte[] recognizeBitmapNative(long j, Bitmap bitmap, RecognitionOptions recognitionOptions);

    private native byte[] recognizeBufferNative(long j, int i, int i2, ByteBuffer byteBuffer, RecognitionOptions recognitionOptions);

    private native byte[] recognizeNative(long j, int i, int i2, byte[] bArr, RecognitionOptions recognitionOptions);

    public final void a(wc0 wc0Var) {
        if (this.b != 0) {
            Log.w("BarhopperV3", "Native pointer already exists.");
            return;
        }
        long jCreateNativeWithClientOptions = createNativeWithClientOptions(wc0Var.zzD());
        this.b = jCreateNativeWithClientOptions;
        if (jCreateNativeWithClientOptions != 0) {
            return;
        }
        fg.c("Failed to create native pointer with client options.");
    }

    public final vc0 b(int i, int i2, ByteBuffer byteBuffer, RecognitionOptions recognitionOptions) {
        long j = this.b;
        if (j != 0) {
            return g(recognizeBufferNative(j, i, i2, byteBuffer, recognitionOptions));
        }
        ah.f("Native pointer does not exist.");
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        long j = this.b;
        if (j != 0) {
            closeNative(j);
            this.b = 0L;
        }
    }

    public final vc0 e(int i, int i2, byte[] bArr, RecognitionOptions recognitionOptions) {
        long j = this.b;
        if (j != 0) {
            return g(recognizeNative(j, i, i2, bArr, recognitionOptions));
        }
        ah.f("Native pointer does not exist.");
        return null;
    }

    public final vc0 f(Bitmap bitmap, RecognitionOptions recognitionOptions) {
        if (this.b == 0) {
            ah.f("Native pointer does not exist.");
            return null;
        }
        Bitmap.Config config = bitmap.getConfig();
        Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
        if (config != config2) {
            Log.d("BarhopperV3", "Input bitmap config is not ARGB_8888. Converting it to ARGB_8888 from ".concat(String.valueOf(bitmap.getConfig())));
            bitmap = bitmap.copy(config2, bitmap.isMutable());
        }
        return g(recognizeBitmapNative(this.b, bitmap, recognitionOptions));
    }
}
