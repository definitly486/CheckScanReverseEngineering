package defpackage;

import android.content.Context;
import androidx.camera.core.CameraProvider;
import androidx.camera.extensions.ExtensionsManager;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import yads.pe;
import yads.tt3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w43 implements CallbackToFutureAdapter.Resolver, tt3 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ w43(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ExtensionsManager.Companion.getInstanceAsync$lambda$0$1((Context) this.b, (CameraProvider) this.c, completer);
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((pe) obj).getClass();
    }
}
