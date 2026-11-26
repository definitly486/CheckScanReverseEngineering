package com.yalantis.ucrop.task;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import androidx.webkit.ProxyConfig;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.yalantis.ucrop.OkHttpClientStore;
import com.yalantis.ucrop.callback.BitmapLoadCallback;
import com.yalantis.ucrop.model.ExifInfo;
import com.yalantis.ucrop.util.BitmapLoadUtils;
import defpackage.b37;
import defpackage.bj;
import defpackage.fg;
import defpackage.jy6;
import defpackage.o2;
import defpackage.t06;
import defpackage.wu0;
import defpackage.wv8;
import defpackage.z47;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public class BitmapLoadTask extends AsyncTask<Void, Void, BitmapWorkerResult> {
    private static final int MAX_BITMAP_SIZE = 104857600;
    private static final String TAG = "BitmapWorkerTask";
    private final BitmapLoadCallback mBitmapLoadCallback;
    private final WeakReference<Context> mContext;
    private Uri mInputUri;
    private Uri mOutputUri;
    private final int mRequiredHeight;
    private final int mRequiredWidth;

    public BitmapLoadTask(Context context, Uri uri, Uri uri2, int i, int i2, BitmapLoadCallback bitmapLoadCallback) {
        this.mContext = new WeakReference<>(context);
        this.mInputUri = uri;
        this.mOutputUri = uri2;
        this.mRequiredWidth = i;
        this.mRequiredHeight = i2;
        this.mBitmapLoadCallback = bitmapLoadCallback;
    }

    private boolean checkSize(Bitmap bitmap, BitmapFactory.Options options) {
        if ((bitmap != null ? bitmap.getByteCount() : 0) <= MAX_BITMAP_SIZE) {
            return false;
        }
        options.inSampleSize *= 2;
        return true;
    }

    private void copyFile(Uri uri, Uri uri2) throws Throwable {
        InputStream inputStreamOpenInputStream;
        Log.d(TAG, "copyFile");
        if (uri2 == null) {
            o2.d("Output Uri is null - cannot copy image");
            return;
        }
        Context context = this.mContext.get();
        try {
            inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            try {
                if (inputStreamOpenInputStream == null) {
                    throw new NullPointerException("InputStream for given input Uri is null");
                }
                OutputStream outputStreamOpenOutputStream = isContentUri(uri2) ? context.getContentResolver().openOutputStream(uri2) : new FileOutputStream(new File(uri2.getPath()));
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = inputStreamOpenInputStream.read(bArr);
                    if (i <= 0) {
                        BitmapLoadUtils.close(outputStreamOpenOutputStream);
                        BitmapLoadUtils.close(inputStreamOpenInputStream);
                        this.mInputUri = this.mOutputUri;
                        return;
                    }
                    outputStreamOpenOutputStream.write(bArr, 0, i);
                }
            } catch (Throwable th) {
                th = th;
                BitmapLoadUtils.close(null);
                BitmapLoadUtils.close(inputStreamOpenInputStream);
                this.mInputUri = this.mOutputUri;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamOpenInputStream = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a1  */
    private void downloadFile(Uri uri, Uri uri2) throws Throwable {
        z47 z47VarExecute;
        t06 t06Var;
        Log.d(TAG, "downloadFile");
        if (uri2 == null) {
            o2.d("Output Uri is null - cannot download image");
            return;
        }
        Context context = this.mContext.get();
        if (context == null) {
            o2.d("Context is null");
            return;
        }
        OkHttpClient client = OkHttpClientStore.INSTANCE.getClient();
        wu0 wu0Var = null;
        try {
            b37.a aVar = new b37.a();
            aVar.e(uri.toString());
            b37 b37VarA = aVar.a();
            try {
                client.getClass();
                z47VarExecute = FirebasePerfOkHttpClient.execute(new jy6(client, b37VarA));
                try {
                    wu0 wu0VarL = z47VarExecute.h.L();
                    try {
                        OutputStream outputStreamOpenOutputStream = isContentUri(this.mOutputUri) ? context.getContentResolver().openOutputStream(uri2) : new FileOutputStream(new File(uri2.getPath()));
                        if (outputStreamOpenOutputStream == null) {
                            throw new NullPointerException("OutputStream for given output Uri is null");
                        }
                        t06Var = new t06(outputStreamOpenOutputStream, new wv8());
                        try {
                            wu0VarL.o0(t06Var);
                            BitmapLoadUtils.close(wu0VarL);
                            BitmapLoadUtils.close(t06Var);
                            BitmapLoadUtils.close(z47VarExecute.h);
                            client.b.a();
                            this.mInputUri = this.mOutputUri;
                        } catch (Throwable th) {
                            th = th;
                            wu0Var = wu0VarL;
                            BitmapLoadUtils.close(wu0Var);
                            BitmapLoadUtils.close(t06Var);
                            if (z47VarExecute != null) {
                                BitmapLoadUtils.close(z47VarExecute.h);
                            }
                            client.b.a();
                            this.mInputUri = this.mOutputUri;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        t06Var = null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    t06Var = null;
                }
            } catch (Throwable th4) {
                th = th4;
                z47VarExecute = null;
                t06Var = null;
                BitmapLoadUtils.close(wu0Var);
                BitmapLoadUtils.close(t06Var);
                if (z47VarExecute != null) {
                    BitmapLoadUtils.close(z47VarExecute.h);
                }
                client.b.a();
                this.mInputUri = this.mOutputUri;
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    private boolean isContentUri(Uri uri) {
        return uri.getScheme().equals(FirebaseAnalytics.Param.CONTENT);
    }

    private boolean isDownloadUri(Uri uri) {
        String scheme = uri.getScheme();
        return scheme.equals(ProxyConfig.MATCH_HTTP) || scheme.equals(ProxyConfig.MATCH_HTTPS);
    }

    private boolean isFileUri(Uri uri) {
        return uri.getScheme().equals("file");
    }

    private void processInputUri() {
        Log.d(TAG, "Uri scheme: " + this.mInputUri.getScheme());
        boolean zIsDownloadUri = isDownloadUri(this.mInputUri);
        Uri uri = this.mInputUri;
        if (zIsDownloadUri) {
            try {
                downloadFile(uri, this.mOutputUri);
                return;
            } catch (IOException | NullPointerException e) {
                Log.e(TAG, "Downloading failed", e);
                throw e;
            }
        }
        boolean zIsContentUri = isContentUri(uri);
        Uri uri2 = this.mInputUri;
        if (zIsContentUri) {
            try {
                copyFile(uri2, this.mOutputUri);
                return;
            } catch (IOException | NullPointerException e2) {
                Log.e(TAG, "Copying failed", e2);
                throw e2;
            }
        }
        if (isFileUri(uri2)) {
            return;
        }
        String scheme = this.mInputUri.getScheme();
        Log.e(TAG, "Invalid Uri scheme " + scheme);
        fg.c(bj.c("Invalid Uri scheme", scheme));
    }

    @Override // android.os.AsyncTask
    public BitmapWorkerResult doInBackground(Void... voidArr) {
        Context context = this.mContext.get();
        if (context == null) {
            return new BitmapWorkerResult(new NullPointerException("context is null"));
        }
        if (this.mInputUri == null) {
            return new BitmapWorkerResult(new NullPointerException("Input Uri cannot be null"));
        }
        try {
            processInputUri();
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            options.inSampleSize = BitmapLoadUtils.calculateInSampleSize(options, this.mRequiredWidth, this.mRequiredHeight);
            boolean z = false;
            options.inJustDecodeBounds = false;
            Bitmap bitmapDecodeStream = null;
            while (!z) {
                try {
                    InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(this.mInputUri);
                    try {
                        bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                        if (options.outWidth == -1 || options.outHeight == -1) {
                            BitmapWorkerResult bitmapWorkerResult = new BitmapWorkerResult(new IllegalArgumentException("Bounds for bitmap could not be retrieved from the Uri: [" + this.mInputUri + "]"));
                            BitmapLoadUtils.close(inputStreamOpenInputStream);
                            return bitmapWorkerResult;
                        }
                        BitmapLoadUtils.close(inputStreamOpenInputStream);
                        if (!checkSize(bitmapDecodeStream, options)) {
                            z = true;
                        }
                    } catch (Throwable th) {
                        BitmapLoadUtils.close(inputStreamOpenInputStream);
                        throw th;
                    }
                } catch (IOException e) {
                    Log.e(TAG, "doInBackground: ImageDecoder.createSource: ", e);
                    return new BitmapWorkerResult(new IllegalArgumentException("Bitmap could not be decoded from the Uri: [" + this.mInputUri + "]", e));
                } catch (OutOfMemoryError e2) {
                    Log.e(TAG, "doInBackground: BitmapFactory.decodeFileDescriptor: ", e2);
                    options.inSampleSize *= 2;
                }
            }
            Uri uri = this.mInputUri;
            if (bitmapDecodeStream == null) {
                return new BitmapWorkerResult(new IllegalArgumentException("Bitmap could not be decoded from the Uri: [" + uri + "]"));
            }
            int exifOrientation = BitmapLoadUtils.getExifOrientation(context, uri);
            int iExifToDegrees = BitmapLoadUtils.exifToDegrees(exifOrientation);
            int iExifToTranslation = BitmapLoadUtils.exifToTranslation(exifOrientation);
            ExifInfo exifInfo = new ExifInfo(exifOrientation, iExifToDegrees, iExifToTranslation);
            Matrix matrix = new Matrix();
            if (iExifToDegrees != 0) {
                matrix.preRotate(iExifToDegrees);
            }
            if (iExifToTranslation != 1) {
                matrix.postScale(iExifToTranslation, 1.0f);
            }
            return !matrix.isIdentity() ? new BitmapWorkerResult(BitmapLoadUtils.transformBitmap(bitmapDecodeStream, matrix), exifInfo) : new BitmapWorkerResult(bitmapDecodeStream, exifInfo);
        } catch (IOException | NullPointerException e3) {
            return new BitmapWorkerResult(e3);
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(BitmapWorkerResult bitmapWorkerResult) {
        Exception exc = bitmapWorkerResult.mBitmapWorkerException;
        BitmapLoadCallback bitmapLoadCallback = this.mBitmapLoadCallback;
        if (exc == null) {
            bitmapLoadCallback.onBitmapLoaded(bitmapWorkerResult.mBitmapResult, bitmapWorkerResult.mExifInfo, this.mInputUri, this.mOutputUri);
        } else {
            bitmapLoadCallback.onFailure(exc);
        }
    }

    public static class BitmapWorkerResult {
        Bitmap mBitmapResult;
        Exception mBitmapWorkerException;
        ExifInfo mExifInfo;

        public BitmapWorkerResult(Bitmap bitmap, ExifInfo exifInfo) {
            this.mBitmapResult = bitmap;
            this.mExifInfo = exifInfo;
        }

        public BitmapWorkerResult(Exception exc) {
            this.mBitmapWorkerException = exc;
        }
    }
}
