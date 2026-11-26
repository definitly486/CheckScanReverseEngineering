package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.common.images.ImageManager.ImageReceiver;
import com.google.android.gms.common.internal.Asserts;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements Runnable {
    public final zag b;
    public final /* synthetic */ ImageManager c;

    public a(ImageManager imageManager, zag zagVar) {
        this.c = imageManager;
        this.b = zagVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Asserts.checkMainThread("LoadImageRunnable must be executed on the main thread");
        ImageManager imageManager = this.c;
        HashMap map = imageManager.d;
        zag zagVar = this.b;
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) map.get(zagVar);
        if (imageReceiver != null) {
            imageManager.d.remove(zagVar);
            Asserts.checkMainThread("ImageReceiver.removeImageRequest() must be called in the main thread");
            imageReceiver.c.remove(zagVar);
        }
        Uri uri = zagVar.a.a;
        if (uri == null) {
            zagVar.b(imageManager.a, true);
            return;
        }
        Long l = (Long) imageManager.f.get(uri);
        if (l != null) {
            if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                zagVar.b(imageManager.a, true);
                return;
            }
            imageManager.f.remove(uri);
        }
        zagVar.a(null, false, true, false);
        ImageManager.ImageReceiver imageReceiver2 = (ImageManager.ImageReceiver) imageManager.e.get(uri);
        if (imageReceiver2 == null) {
            imageReceiver2 = imageManager.new ImageReceiver(uri);
            imageManager.e.put(uri, imageReceiver2);
        }
        Asserts.checkMainThread("ImageReceiver.addImageRequest() must be called in the main thread");
        imageReceiver2.c.add(zagVar);
        if (!(zagVar instanceof zaf)) {
            imageManager.d.put(zagVar, imageReceiver2);
        }
        synchronized (ImageManager.g) {
            try {
                HashSet hashSet = ImageManager.h;
                if (!hashSet.contains(uri)) {
                    hashSet.add(uri);
                    imageReceiver2.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
