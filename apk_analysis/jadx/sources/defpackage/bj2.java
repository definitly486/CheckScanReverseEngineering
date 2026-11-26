package defpackage;

import androidx.camera.core.processing.DefaultSurfaceProcessor;
import com.my.tracker.obfuscated.i0;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bj2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ bj2(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                ((DefaultSurfaceProcessor) obj3).lambda$executeSafely$12((Runnable) obj2, (Runnable) obj);
                break;
            default:
                ((i0) obj3).a((i0.c) obj2, (List) obj);
                break;
        }
    }
}
