package androidx.camera.lifecycle;

import android.content.Context;
import androidx.concurrent.futures.ListenableFutureKt;
import defpackage.e02;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessCameraProviderExtKt {
    public static final Object awaitInstance(ProcessCameraProvider.Companion companion, Context context, e02<? super ProcessCameraProvider> e02Var) {
        return ListenableFutureKt.await(companion.getInstance(context), e02Var);
    }
}
