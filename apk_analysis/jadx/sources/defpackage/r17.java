package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.Registry;
import com.bumptech.glide.a;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.data.c;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class r17 {
    public static Registry a(a aVar, ArrayList arrayList) {
        i47 sw0Var;
        i47 g98Var;
        ij0 ij0Var = aVar.b;
        pr prVar = aVar.e;
        wq3 wq3Var = aVar.d;
        Context applicationContext = wq3Var.getApplicationContext();
        yq3 yq3Var = wq3Var.g;
        Registry registry = new Registry();
        DefaultImageHeaderParser defaultImageHeaderParser = new DefaultImageHeaderParser();
        l14 l14Var = registry.g;
        synchronized (l14Var) {
            l14Var.a.add(defaultImageHeaderParser);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 27) {
            h23 h23Var = new h23();
            l14 l14Var2 = registry.g;
            synchronized (l14Var2) {
                l14Var2.a.add(h23Var);
            }
        }
        Resources resources = applicationContext.getResources();
        ArrayList arrayListE = registry.e();
        xw0 xw0Var = new xw0(applicationContext, arrayListE, ij0Var, prVar);
        kd9 kd9Var = new kd9(ij0Var, new kd9.g());
        vq2 vq2Var = new vq2(registry.e(), resources.getDisplayMetrics(), ij0Var, prVar);
        if (i < 28 || !yq3Var.a.containsKey(sq3.class)) {
            sw0Var = new sw0(vq2Var);
            g98Var = new g98(vq2Var, prVar);
        } else {
            g98Var = new s54();
            sw0Var = new tw0();
        }
        if (i >= 28) {
            registry.d("Animation", InputStream.class, Drawable.class, new wl.c(new wl(arrayListE, prVar)));
            registry.d("Animation", ByteBuffer.class, Drawable.class, new wl.b(new wl(arrayListE, prVar)));
        }
        k47 k47Var = new k47(applicationContext);
        yi0 yi0Var = new yi0(prVar);
        Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.JPEG;
        ui0 ui0Var = new ui0();
        vp3 vp3Var = new vp3();
        ContentResolver contentResolver = applicationContext.getContentResolver();
        registry.a(ByteBuffer.class, new x97());
        registry.a(InputStream.class, new h98(prVar));
        registry.d("Bitmap", ByteBuffer.class, Bitmap.class, sw0Var);
        registry.d("Bitmap", InputStream.class, Bitmap.class, g98Var);
        String str = Build.FINGERPRINT;
        if (!"robolectric".equals(str)) {
            registry.d("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new l36(vq2Var));
        }
        registry.d("Bitmap", AssetFileDescriptor.class, Bitmap.class, new kd9(ij0Var, new kd9.c()));
        registry.d("Bitmap", ParcelFileDescriptor.class, Bitmap.class, kd9Var);
        m59.a<?> aVar2 = m59.a.a;
        registry.c(Bitmap.class, Bitmap.class, aVar2);
        registry.d("Bitmap", Bitmap.class, Bitmap.class, new k59());
        registry.b(Bitmap.class, yi0Var);
        registry.d("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new vi0(resources, sw0Var));
        registry.d("BitmapDrawable", InputStream.class, BitmapDrawable.class, new vi0(resources, g98Var));
        registry.d("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new vi0(resources, kd9Var));
        registry.b(BitmapDrawable.class, new wi0(ij0Var, yi0Var));
        registry.d("Animation", InputStream.class, up3.class, new i98(arrayListE, xw0Var, prVar));
        registry.d("Animation", ByteBuffer.class, up3.class, xw0Var);
        registry.b(up3.class, new c84());
        registry.c(tp3.class, tp3.class, aVar2);
        registry.d("Bitmap", tp3.class, Bitmap.class, new aq3(ij0Var));
        registry.d("legacy_append", Uri.class, Drawable.class, k47Var);
        registry.d("legacy_append", Uri.class, Bitmap.class, new f47(k47Var, ij0Var));
        registry.h(new zw0.a());
        registry.c(File.class, ByteBuffer.class, new ww0.b());
        registry.c(File.class, InputStream.class, new o93.e(new q93()));
        registry.d("legacy_append", File.class, File.class, new h93());
        registry.c(File.class, ParcelFileDescriptor.class, new o93.b(new p93()));
        registry.c(File.class, File.class, aVar2);
        registry.h(new c.a(prVar));
        if (!"robolectric".equals(str)) {
            registry.h(new ParcelFileDescriptorRewinder.a());
        }
        kn2.c cVar = new kn2.c(applicationContext);
        kn2.a aVar3 = new kn2.a(applicationContext);
        kn2.b bVar = new kn2.b(applicationContext);
        Class cls = Integer.TYPE;
        registry.c(cls, InputStream.class, cVar);
        registry.c(Integer.class, InputStream.class, cVar);
        registry.c(cls, AssetFileDescriptor.class, aVar3);
        registry.c(Integer.class, AssetFileDescriptor.class, aVar3);
        registry.c(cls, Drawable.class, bVar);
        registry.c(Integer.class, Drawable.class, bVar);
        registry.c(Uri.class, InputStream.class, new x47.b(applicationContext));
        registry.c(Uri.class, AssetFileDescriptor.class, new x47.a(applicationContext));
        q47.c cVar2 = new q47.c(resources);
        q47.a aVar4 = new q47.a(resources);
        q47.b bVar2 = new q47.b(resources);
        registry.c(Integer.class, Uri.class, cVar2);
        registry.c(cls, Uri.class, cVar2);
        registry.c(Integer.class, AssetFileDescriptor.class, aVar4);
        registry.c(cls, AssetFileDescriptor.class, aVar4);
        registry.c(Integer.class, InputStream.class, bVar2);
        registry.c(cls, InputStream.class, bVar2);
        registry.c(String.class, InputStream.class, new f92.b());
        registry.c(Uri.class, InputStream.class, new f92.b());
        registry.c(String.class, InputStream.class, new x98.c());
        registry.c(String.class, ParcelFileDescriptor.class, new x98.b());
        registry.c(String.class, AssetFileDescriptor.class, new x98.a());
        registry.c(Uri.class, InputStream.class, new gs.c(applicationContext.getAssets()));
        registry.c(Uri.class, AssetFileDescriptor.class, new gs.b(applicationContext.getAssets()));
        registry.c(Uri.class, InputStream.class, new e95.a(applicationContext));
        registry.c(Uri.class, InputStream.class, new g95.a(applicationContext));
        if (i >= 29) {
            registry.c(Uri.class, InputStream.class, new su6.c(applicationContext, InputStream.class));
            registry.c(Uri.class, ParcelFileDescriptor.class, new su6.b(applicationContext, ParcelFileDescriptor.class));
        }
        boolean zContainsKey = yq3Var.a.containsKey(vq3.class);
        registry.c(Uri.class, InputStream.class, new d99.d(contentResolver, zContainsKey));
        registry.c(Uri.class, ParcelFileDescriptor.class, new d99.b(contentResolver, zContainsKey));
        registry.c(Uri.class, AssetFileDescriptor.class, new d99.a(contentResolver, zContainsKey));
        registry.c(Uri.class, InputStream.class, new i99.a());
        registry.c(URL.class, InputStream.class, new h99.a());
        registry.c(Uri.class, File.class, new d95.a(applicationContext));
        registry.c(cr3.class, InputStream.class, new zy3.a());
        registry.c(byte[].class, ByteBuffer.class, new qw0.a());
        registry.c(byte[].class, InputStream.class, new qw0.d());
        registry.c(Uri.class, Uri.class, aVar2);
        registry.c(Drawable.class, Drawable.class, aVar2);
        registry.d("legacy_append", Drawable.class, Drawable.class, new l59());
        registry.i(Bitmap.class, BitmapDrawable.class, new xi0(resources));
        registry.i(Bitmap.class, byte[].class, ui0Var);
        registry.i(Drawable.class, byte[].class, new bn2(ij0Var, ui0Var, vp3Var));
        registry.i(up3.class, byte[].class, vp3Var);
        kd9 kd9Var2 = new kd9(ij0Var, new kd9.d());
        registry.d("legacy_append", ByteBuffer.class, Bitmap.class, kd9Var2);
        registry.d("legacy_append", ByteBuffer.class, BitmapDrawable.class, new vi0(resources, kd9Var2));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            zq3 zq3Var = (zq3) it.next();
            try {
                zq3Var.a();
            } catch (AbstractMethodError e) {
                h2.e("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: ".concat(zq3Var.getClass().getName()), e);
                return null;
            }
        }
        return registry;
    }
}
