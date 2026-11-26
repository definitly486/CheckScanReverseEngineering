package androidx.camera.core;

import android.graphics.Bitmap;
import androidx.camera.core.imagecapture.RequestWithCallback;
import androidx.camera.core.imagecapture.TakePictureRequest;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import defpackage.a32;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.c31;
import defpackage.e02;
import defpackage.g02;
import defpackage.j59;
import defpackage.k57;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.o22;
import defpackage.r07;
import defpackage.r22;
import defpackage.zya;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class ImageCaptureExtKt {
    public static final TakePictureRequest getTakePictureRequest(ImageCapture imageCapture) {
        imageCapture.getClass();
        RequestWithCallback capturingRequest = imageCapture.getTakePictureManager().getCapturingRequest();
        if (capturingRequest != null) {
            return capturingRequest.getTakePictureRequest();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v2, types: [T, androidx.camera.core.DelegatingImageCapturedCallback] */
    public static final Object takePicture(ImageCapture imageCapture, final ll3<j59> ll3Var, final nl3<? super Integer, j59> nl3Var, final nl3<? super Bitmap, j59> nl3Var2, e02<? super ImageProxy> e02Var) throws Throwable {
        Executor executorDirectExecutor;
        o22.a aVar = e02Var.getContext().get(g02.a.b);
        r22 r22Var = aVar instanceof r22 ? (r22) aVar : null;
        if (r22Var != null) {
            executorDirectExecutor = aq5.a(r22Var);
        } else {
            executorDirectExecutor = CameraXExecutors.directExecutor();
            executorDirectExecutor.getClass();
        }
        final c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        final r07 r07Var = new r07();
        r07Var.b = new DelegatingImageCapturedCallback(new ImageCapture.OnImageCapturedCallback() { // from class: androidx.camera.core.ImageCaptureExtKt$takePicture$2$1
            @Override // androidx.camera.core.ImageCapture.OnImageCapturedCallback
            public void onCaptureProcessProgressed(int i) {
                nl3<Integer, j59> nl3Var3 = nl3Var;
                if (nl3Var3 != null) {
                    nl3Var3.invoke(Integer.valueOf(i));
                }
            }

            @Override // androidx.camera.core.ImageCapture.OnImageCapturedCallback
            public void onCaptureStarted() {
                ll3<j59> ll3Var2 = ll3Var;
                if (ll3Var2 != null) {
                    ll3Var2.invoke();
                }
            }

            @Override // androidx.camera.core.ImageCapture.OnImageCapturedCallback
            public void onCaptureSuccess(ImageProxy imageProxy) {
                imageProxy.getClass();
                DelegatingImageCapturedCallback delegatingImageCapturedCallback = r07Var.b;
                if (delegatingImageCapturedCallback == null) {
                    aa4.j("delegatingCallback");
                    throw null;
                }
                delegatingImageCapturedCallback.dispose();
                c31Var.resumeWith(imageProxy);
            }

            @Override // androidx.camera.core.ImageCapture.OnImageCapturedCallback
            public void onError(ImageCaptureException imageCaptureException) {
                imageCaptureException.getClass();
                DelegatingImageCapturedCallback delegatingImageCapturedCallback = r07Var.b;
                if (delegatingImageCapturedCallback == null) {
                    aa4.j("delegatingCallback");
                    throw null;
                }
                delegatingImageCapturedCallback.dispose();
                c31Var.resumeWith(new k57.a(imageCaptureException));
            }

            @Override // androidx.camera.core.ImageCapture.OnImageCapturedCallback
            public void onPostviewBitmapAvailable(Bitmap bitmap) {
                bitmap.getClass();
                nl3<Bitmap, j59> nl3Var3 = nl3Var2;
                if (nl3Var3 != null) {
                    nl3Var3.invoke(bitmap);
                }
            }
        });
        c31Var.n(new nl3<Throwable, j59>() { // from class: androidx.camera.core.ImageCaptureExtKt$takePicture$2$2
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                DelegatingImageCapturedCallback delegatingImageCapturedCallback = r07Var.b;
                if (delegatingImageCapturedCallback != null) {
                    delegatingImageCapturedCallback.dispose();
                } else {
                    aa4.j("delegatingCallback");
                    throw null;
                }
            }

            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
                invoke2(th);
                return j59.a;
            }
        });
        T t = r07Var.b;
        if (t == 0) {
            aa4.j("delegatingCallback");
            throw null;
        }
        imageCapture.lambda$takePicture$1(executorDirectExecutor, (DelegatingImageCapturedCallback) t);
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    public static /* synthetic */ Object takePicture$default(ImageCapture imageCapture, ll3 ll3Var, nl3 nl3Var, nl3 nl3Var2, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            ll3Var = null;
        }
        if ((i & 2) != 0) {
            nl3Var = null;
        }
        if ((i & 4) != 0) {
            nl3Var2 = null;
        }
        return takePicture(imageCapture, ll3Var, nl3Var, nl3Var2, e02Var);
    }

    public static /* synthetic */ Object takePicture$default(ImageCapture imageCapture, ImageCapture.OutputFileOptions outputFileOptions, ll3 ll3Var, nl3 nl3Var, nl3 nl3Var2, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            ll3Var = null;
        }
        if ((i & 4) != 0) {
            nl3Var = null;
        }
        if ((i & 8) != 0) {
            nl3Var2 = null;
        }
        return takePicture(imageCapture, outputFileOptions, ll3Var, nl3Var, nl3Var2, e02Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v2, types: [T, androidx.camera.core.DelegatingImageSavedCallback] */
    public static final Object takePicture(ImageCapture imageCapture, ImageCapture.OutputFileOptions outputFileOptions, final ll3<j59> ll3Var, final nl3<? super Integer, j59> nl3Var, final nl3<? super Bitmap, j59> nl3Var2, e02<? super ImageCapture.OutputFileResults> e02Var) throws Throwable {
        Executor executorDirectExecutor;
        o22.a aVar = e02Var.getContext().get(g02.a.b);
        r22 r22Var = aVar instanceof r22 ? (r22) aVar : null;
        if (r22Var != null) {
            executorDirectExecutor = aq5.a(r22Var);
        } else {
            executorDirectExecutor = CameraXExecutors.directExecutor();
            executorDirectExecutor.getClass();
        }
        final c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        final r07 r07Var = new r07();
        r07Var.b = new DelegatingImageSavedCallback(new ImageCapture.OnImageSavedCallback() { // from class: androidx.camera.core.ImageCaptureExtKt$takePicture$4$1
            @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
            public void onCaptureProcessProgressed(int i) {
                nl3<Integer, j59> nl3Var3 = nl3Var;
                if (nl3Var3 != null) {
                    nl3Var3.invoke(Integer.valueOf(i));
                }
            }

            @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
            public void onCaptureStarted() {
                ll3<j59> ll3Var2 = ll3Var;
                if (ll3Var2 != null) {
                    ll3Var2.invoke();
                }
            }

            @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
            public void onError(ImageCaptureException imageCaptureException) {
                imageCaptureException.getClass();
                DelegatingImageSavedCallback delegatingImageSavedCallback = r07Var.b;
                if (delegatingImageSavedCallback == null) {
                    aa4.j("delegatingCallback");
                    throw null;
                }
                delegatingImageSavedCallback.dispose();
                c31Var.resumeWith(new k57.a(imageCaptureException));
            }

            @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
            public void onImageSaved(ImageCapture.OutputFileResults outputFileResults) {
                outputFileResults.getClass();
                DelegatingImageSavedCallback delegatingImageSavedCallback = r07Var.b;
                if (delegatingImageSavedCallback == null) {
                    aa4.j("delegatingCallback");
                    throw null;
                }
                delegatingImageSavedCallback.dispose();
                c31Var.resumeWith(outputFileResults);
            }

            @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
            public void onPostviewBitmapAvailable(Bitmap bitmap) {
                bitmap.getClass();
                nl3<Bitmap, j59> nl3Var3 = nl3Var2;
                if (nl3Var3 != null) {
                    nl3Var3.invoke(bitmap);
                }
            }
        });
        c31Var.n(new nl3<Throwable, j59>() { // from class: androidx.camera.core.ImageCaptureExtKt$takePicture$4$2
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                DelegatingImageSavedCallback delegatingImageSavedCallback = r07Var.b;
                if (delegatingImageSavedCallback != null) {
                    delegatingImageSavedCallback.dispose();
                } else {
                    aa4.j("delegatingCallback");
                    throw null;
                }
            }

            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
                invoke2(th);
                return j59.a;
            }
        });
        T t = r07Var.b;
        if (t != 0) {
            imageCapture.lambda$takePicture$2(outputFileOptions, executorDirectExecutor, (DelegatingImageSavedCallback) t);
            Object objS = c31Var.s();
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            return objS;
        }
        aa4.j("delegatingCallback");
        throw null;
    }
}
