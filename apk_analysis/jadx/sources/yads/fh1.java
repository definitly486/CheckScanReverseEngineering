package yads;

import android.graphics.ImageDecoder;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import com.yandex.mobile.ads.R$id;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class fh1 extends AsyncTask {
    public final WeakReference a;
    public final uw b;

    public fh1(WeakReference weakReference, uw uwVar) {
        this.a = weakReference;
        this.b = uwVar;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002a  */
    /* JADX WARN: Code duplicated, block: B:15:0x003e  */
    /* JADX WARN: Code duplicated, block: B:22:0x002d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x0043 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:28:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x0025  */
    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        Uri uri;
        String path;
        ImageDecoder.Source sourceCreateSource;
        try {
            this.b.getClass();
            throw new IllegalStateException("no bytes stored in cached bitmap");
        } catch (IOException unused) {
            int i = cr3.a;
            vj5[] vj5VarArr = vj5.b;
            cr3.a();
            uri = this.b.b;
            if (uri != null) {
                path = uri.getPath();
            } else {
                path = null;
            }
            if (path != null) {
                try {
                    sourceCreateSource = ImageDecoder.createSource(new File(path));
                } catch (IOException unused2) {
                    int i2 = cr3.a;
                    vj5[] vj5VarArr2 = vj5.b;
                    int i3 = rv3.a;
                    sourceCreateSource = null;
                    if (sourceCreateSource == null) {
                        return null;
                    }
                    try {
                        return ImageDecoder.decodeDrawable(sourceCreateSource);
                    } catch (IOException unused3) {
                        int i4 = cr3.a;
                        vj5[] vj5VarArr3 = vj5.b;
                        cr3.a();
                        return null;
                    }
                }
                if (sourceCreateSource == null) {
                    return ImageDecoder.decodeDrawable(sourceCreateSource);
                }
                return null;
            }
            int i5 = rv3.a;
            sourceCreateSource = null;
            if (sourceCreateSource == null) {
                return ImageDecoder.decodeDrawable(sourceCreateSource);
            }
            return null;
        } catch (IllegalStateException unused4) {
            int i6 = cr3.a;
            vj5[] vj5VarArr4 = vj5.b;
            cr3.a();
            uri = this.b.b;
            if (uri != null) {
                path = uri.getPath();
            } else {
                path = null;
            }
            if (path != null) {
                sourceCreateSource = ImageDecoder.createSource(new File(path));
                if (sourceCreateSource == null) {
                    return ImageDecoder.decodeDrawable(sourceCreateSource);
                }
                return null;
            }
            int i7 = rv3.a;
            sourceCreateSource = null;
            if (sourceCreateSource == null) {
                return ImageDecoder.decodeDrawable(sourceCreateSource);
            }
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        Drawable drawable = (Drawable) obj;
        super.onPostExecute(drawable);
        if (drawable == null || !defpackage.js2.e(drawable)) {
            nh1 nh1Var = (nh1) this.a.get();
            if (nh1Var != null) {
                nh1Var.setImage(this.b.a);
            }
        } else {
            nh1 nh1Var2 = (nh1) this.a.get();
            if (nh1Var2 != null) {
                nh1Var2.setImage(drawable);
            }
        }
        nh1 nh1Var3 = (nh1) this.a.get();
        if (nh1Var3 != null) {
            nh1Var3.setTag(R$id.monetization_ads_divkit_image_loaded_flag, Boolean.TRUE);
        }
    }
}
