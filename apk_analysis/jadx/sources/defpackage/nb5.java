package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.Image;
import android.os.SystemClock;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageProxy;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_vision_common.zzms;
import com.google.android.gms.internal.mlkit_vision_common.zzmu;
import com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class nb5 implements ImageAnalysis.Analyzer {
    public final ScannerPresenter a;
    public final la3 b;
    public ByteBuffer c;

    public static final class a extends gh4 implements nl3<List<pc0>, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<pc0> list) {
            List<pc0> list2 = list;
            nb5 nb5Var = nb5.this;
            ScannerPresenter scannerPresenter = nb5Var.a;
            list2.getClass();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                String strC = ((pc0) it.next()).a.c();
                if (strC != null) {
                    arrayList.add(strC);
                }
            }
            la3 la3Var = nb5Var.b;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (la3Var.invoke(obj).booleanValue()) {
                    arrayList2.add(obj);
                }
            }
            scannerPresenter.onQrsDetected(arrayList2);
            return j59.a;
        }
    }

    public nb5(ScannerPresenter scannerPresenter, la3 la3Var) {
        this.a = scannerPresenter;
        this.b = la3Var;
    }

    public static q54 a(Image image, ImageProxy imageProxy) {
        q54 q54Var;
        int iLimit;
        Bitmap bitmapCreateBitmap;
        int rotationDegrees = imageProxy.getImageInfo().getRotationDegrees();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Preconditions.checkNotNull(image, "Please provide a valid image");
        q54.b(rotationDegrees);
        Preconditions.checkArgument(image.getFormat() == 256 || image.getFormat() == 35, "Only JPEG and YUV_420_888 are supported now");
        Image.Plane[] planes = image.getPlanes();
        if (image.getFormat() == 256) {
            iLimit = image.getPlanes()[0].getBuffer().limit();
            Preconditions.checkArgument(image.getFormat() == 256, "Only JPEG is supported now");
            Image.Plane[] planes2 = image.getPlanes();
            if (planes2 == null || planes2.length != 1) {
                fg.c("Unexpected image format, JPEG should have exactly 1 image plane");
                return null;
            }
            ByteBuffer buffer = planes2[0].getBuffer();
            buffer.rewind();
            int iRemaining = buffer.remaining();
            byte[] bArr = new byte[iRemaining];
            buffer.get(bArr);
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, iRemaining);
            int width = bitmapDecodeByteArray.getWidth();
            int height = bitmapDecodeByteArray.getHeight();
            if (rotationDegrees == 0) {
                bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeByteArray, 0, 0, width, height);
            } else {
                Matrix matrix = new Matrix();
                matrix.postRotate(rotationDegrees);
                bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeByteArray, 0, 0, width, height, matrix, true);
            }
            q54Var = new q54(bitmapCreateBitmap);
        } else {
            for (Image.Plane plane : planes) {
                if (plane.getBuffer() != null) {
                    plane.getBuffer().rewind();
                }
            }
            q54Var = new q54(image, image.getWidth(), image.getHeight(), rotationDegrees);
            iLimit = (image.getPlanes()[0].getBuffer().limit() * 3) / 2;
        }
        int i = iLimit;
        q54 q54Var2 = q54Var;
        zzmu.zza(zzms.zzb("vision-common"), image.getFormat(), 5, jElapsedRealtime, image.getHeight(), image.getWidth(), i, rotationDegrees);
        return q54Var2;
    }

    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    public final void analyze(ImageProxy imageProxy) {
        Object aVar;
        imageProxy.getClass();
        Image image = imageProxy.getImage();
        if (image != null) {
            ylb ylbVarH = tc0.h(new sc0(256));
            try {
                dm9.a aVarC = dm9.c(imageProxy, this.c);
                ByteBuffer byteBuffer = aVarC.b;
                dm9.c cVar = aVarC.a;
                if (this.c != byteBuffer) {
                    this.c = byteBuffer;
                }
                if (cVar.a() == 35) {
                    aVar = a(image, imageProxy);
                } else {
                    int width = imageProxy.getWidth();
                    int height = imageProxy.getHeight();
                    int rotationDegrees = imageProxy.getImageInfo().getRotationDegrees();
                    int iA = cVar.a();
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    aVar = new q54(byteBuffer, width, height, rotationDegrees, iA);
                    zzmu.zza(zzms.zzb("vision-common"), iA, 3, jElapsedRealtime, height, width, byteBuffer.limit(), rotationDegrees);
                }
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            Object objA = a(image, imageProxy);
            if (aVar instanceof k57.a) {
                aVar = objA;
            }
            ylbVarH.a((q54) aVar).addOnSuccessListener(new ef1(new a())).addOnCompleteListener(new k4(imageProxy, 4));
        }
    }
}
