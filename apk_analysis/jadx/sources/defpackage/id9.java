package defpackage;

import androidx.camera.core.impl.SessionConfig;
import androidx.camera.video.VideoCapture;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import yads.ao2;
import yads.mr5;
import yads.os2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class id9 implements CallbackToFutureAdapter.Resolver, mr5 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ id9(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    public Object a(String str) {
        return os2.a((os2) this.b, (ao2) this.c, str);
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((VideoCapture) this.b).lambda$setupSurfaceUpdateNotifier$6((SessionConfig.Builder) this.c, completer);
    }
}
