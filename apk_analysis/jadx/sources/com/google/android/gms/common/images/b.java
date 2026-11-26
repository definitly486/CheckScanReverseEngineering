package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.common.internal.Asserts;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements Runnable {
    public final Uri b;
    public final Bitmap c;
    public final CountDownLatch d;
    public final /* synthetic */ ImageManager e;

    public b(ImageManager imageManager, Uri uri, Bitmap bitmap, CountDownLatch countDownLatch) {
        this.e = imageManager;
        this.b = uri;
        this.c = bitmap;
        this.d = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Asserts.checkMainThread("OnBitmapLoadedRunnable must be executed in the main thread");
        ImageManager imageManager = this.e;
        HashMap map = imageManager.e;
        Uri uri = this.b;
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) map.remove(uri);
        if (imageReceiver != null) {
            ArrayList arrayList = imageReceiver.c;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                zag zagVar = (zag) arrayList.get(i);
                Bitmap bitmap = this.c;
                if (bitmap != null) {
                    Context context = imageManager.a;
                    zagVar.getClass();
                    Asserts.checkNotNull(bitmap);
                    zagVar.a(new BitmapDrawable(context.getResources(), bitmap), false, false, true);
                } else {
                    imageManager.f.put(uri, Long.valueOf(SystemClock.elapsedRealtime()));
                    zagVar.b(imageManager.a, false);
                }
                if (!(zagVar instanceof zaf)) {
                    imageManager.d.remove(zagVar);
                }
            }
        }
        this.d.countDown();
        synchronized (ImageManager.g) {
            ImageManager.h.remove(uri);
        }
    }
}
