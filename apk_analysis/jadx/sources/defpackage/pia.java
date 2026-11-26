package defpackage;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.Log;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.images.b;
import com.google.android.gms.common.internal.Asserts;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final class pia implements Runnable {
    public final Uri b;
    public final AssetFileDescriptor c;
    public final /* synthetic */ ImageManager d;

    public pia(ImageManager imageManager, Uri uri, AssetFileDescriptor assetFileDescriptor) {
        this.d = imageManager;
        this.b = uri;
        this.c = assetFileDescriptor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Asserts.checkNotMainThread("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        Uri uri = this.b;
        Bitmap bitmapDecodeStream = null;
        AssetFileDescriptor assetFileDescriptor = this.c;
        if (assetFileDescriptor != null) {
            try {
                FileInputStream fileInputStreamCreateInputStream = assetFileDescriptor.createInputStream();
                if (fileInputStreamCreateInputStream != null) {
                    try {
                        bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStreamCreateInputStream);
                    } catch (Throwable th) {
                        try {
                            fileInputStreamCreateInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (fileInputStreamCreateInputStream != null) {
                    fileInputStreamCreateInputStream.close();
                }
            } catch (IOException | OutOfMemoryError e) {
                Log.e("ImageManager", "Error loading bitmap for uri: ".concat(String.valueOf(uri)), e);
            }
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        ImageManager imageManager = this.d;
        imageManager.b.post(new b(imageManager, uri, bitmapDecodeStream, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            Log.w("ImageManager", "Latch interrupted while posting ".concat(String.valueOf(uri)));
        }
    }
}
