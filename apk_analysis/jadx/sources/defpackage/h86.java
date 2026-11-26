package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "com.warefly.checkscan.scanner.presentation.crop.PickGalleryPictureToCropBehavior$prepareCropSource$1", f = "PickGalleryPictureToCropBehavior.kt", l = {79}, m = "invokeSuspend")
public final class h86 extends pg8 implements bm3<id3<? super Uri>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ Uri n;
    public final /* synthetic */ Context o;
    public final /* synthetic */ g86 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h86(Uri uri, Context context, g86 g86Var, e02<? super h86> e02Var) {
        super(2, e02Var);
        this.n = uri;
        this.o = context;
        this.p = g86Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        h86 h86Var = new h86(this.n, this.o, this.p, e02Var);
        h86Var.m = obj;
        return h86Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super Uri> id3Var, e02<? super j59> e02Var) {
        return ((h86) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0078  */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws IOException {
        Object aVar;
        Bitmap bitmapDecodeStream;
        Uri uriFromFile;
        int i;
        Uri uri = this.n;
        Context context = this.o;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = this.l;
        if (i2 == 0) {
            r57.b(obj);
            id3 id3Var = (id3) this.m;
            try {
                aVar = context.getContentResolver().openInputStream(uri);
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (aVar instanceof k57.a) {
                aVar = null;
            }
            InputStream inputStream = (InputStream) aVar;
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            options.inPreferredConfig = config;
            BitmapFactory.decodeStream(inputStream, null, options);
            if (inputStream != null) {
                inputStream.close();
            }
            int i3 = options.outWidth;
            if (i3 == -1 || (i = options.outHeight) == -1) {
                bitmapDecodeStream = null;
            } else {
                if (i > i3) {
                    i3 = i;
                }
                if (i3 > 1500) {
                    BitmapFactory.Options options2 = new BitmapFactory.Options();
                    options2.inSampleSize = i3 / 1500;
                    options2.inPreferredConfig = config;
                    InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                    bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options2);
                    if (inputStreamOpenInputStream != null) {
                        inputStreamOpenInputStream.close();
                    }
                } else {
                    bitmapDecodeStream = null;
                }
            }
            if (bitmapDecodeStream == null) {
                File fileCreateTempFile = File.createTempFile("picked_temp", null, context.getCacheDir());
                fileCreateTempFile.deleteOnExit();
                InputStream inputStreamOpenInputStream2 = context.getContentResolver().openInputStream(uri);
                if (inputStreamOpenInputStream2 == null) {
                    ah.f(rk3.c(uri, "Cannot open picked uri: "));
                    return null;
                }
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                    try {
                        ex0.a(inputStreamOpenInputStream2, fileOutputStream);
                        fileOutputStream.close();
                        inputStreamOpenInputStream2.close();
                        uriFromFile = Uri.fromFile(fileCreateTempFile);
                        uriFromFile.getClass();
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            m96.c(fileOutputStream, th2);
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        m96.c(inputStreamOpenInputStream2, th4);
                        throw th5;
                    }
                }
            } else {
                File fileCreateTempFile2 = File.createTempFile("bitmap_temp", null, context.getCacheDir());
                fileCreateTempFile2.deleteOnExit();
                FileOutputStream fileOutputStream2 = new FileOutputStream(fileCreateTempFile2);
                try {
                    if (!bitmapDecodeStream.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream2)) {
                        throw new IllegalStateException("Cannot compress thumbnail bitmap");
                    }
                    j59 j59Var = j59.a;
                    fileOutputStream2.close();
                    uriFromFile = Uri.fromFile(fileCreateTempFile2);
                    uriFromFile.getClass();
                } catch (Throwable th6) {
                    try {
                        throw th6;
                    } catch (Throwable th7) {
                        m96.c(fileOutputStream2, th6);
                        throw th7;
                    }
                }
            }
            this.l = 1;
            if (id3Var.emit(uriFromFile, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
