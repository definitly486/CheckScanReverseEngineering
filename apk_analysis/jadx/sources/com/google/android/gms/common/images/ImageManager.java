package com.google.android.gms.common.images;

import android.app.BroadcastOptions;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.widget.ImageView;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Constants;
import com.google.android.gms.internal.base.zaj;
import com.google.android.gms.internal.base.zaq;
import com.google.android.gms.internal.base.zar;
import defpackage.pia;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public final class ImageManager {
    public static final Object g = new Object();
    public static final HashSet h = new HashSet();
    public static ImageManager i;
    public final Context a;
    public final zar b = new zar(Looper.getMainLooper());
    public final ExecutorService c = zaq.zaa().zaa(4, 2);
    public final HashMap d;
    public final HashMap e;
    public final HashMap f;

    public final class ImageReceiver extends ResultReceiver {
        public final Uri b;
        public final ArrayList c;

        public ImageReceiver(Uri uri) {
            super(new zar(Looper.getMainLooper()));
            this.b = uri;
            this.c = new ArrayList();
        }

        public final void c() {
            Intent intent = new Intent(Constants.ACTION_LOAD_IMAGE);
            intent.setPackage("com.google.android.gms");
            intent.putExtra(Constants.EXTRA_URI, this.b);
            intent.putExtra(Constants.EXTRA_RESULT_RECEIVER, this);
            intent.putExtra(Constants.EXTRA_PRIORITY, 3);
            int i = Build.VERSION.SDK_INT;
            Context context = ImageManager.this.a;
            if (i < 34) {
                context.sendBroadcast(intent);
            } else {
                context.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
            }
        }

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor");
            AssetFileDescriptor assetFileDescriptor = parcelFileDescriptor != null ? new AssetFileDescriptor(parcelFileDescriptor, bundle.getLong("assetFdStartOffset", 0L), bundle.getLong("assetFdLength", -1L)) : null;
            ImageManager imageManager = ImageManager.this;
            imageManager.c.execute(new pia(imageManager, this.b, assetFileDescriptor));
        }
    }

    public interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    public ImageManager(Context context) {
        this.a = context.getApplicationContext();
        new zaj();
        this.d = new HashMap();
        this.e = new HashMap();
        this.f = new HashMap();
    }

    public static ImageManager create(Context context) {
        ImageManager imageManager = i;
        if (imageManager != null) {
            return imageManager;
        }
        ImageManager imageManager2 = new ImageManager(context);
        i = imageManager2;
        return imageManager2;
    }

    public void loadImage(ImageView imageView, Uri uri, int i2) {
        zae zaeVar = new zae(imageView, uri);
        zaeVar.b = i2;
        zaa(zaeVar);
    }

    public final void zaa(zag zagVar) {
        Asserts.checkMainThread("ImageManager.loadImage() must be called in the main thread");
        new a(this, zagVar).run();
    }

    public void loadImage(ImageView imageView, Uri uri) {
        zaa(new zae(imageView, uri));
    }

    public void loadImage(ImageView imageView, int i2) {
        zaa(new zae(imageView, i2));
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        zaa(new zaf(onImageLoadedListener, uri));
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i2) {
        zaf zafVar = new zaf(onImageLoadedListener, uri);
        zafVar.b = i2;
        zaa(zafVar);
    }
}
