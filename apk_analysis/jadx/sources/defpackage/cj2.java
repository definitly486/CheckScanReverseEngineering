package defpackage;

import android.content.Context;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.profileinstaller.ProfileInstallerInitializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class cj2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ cj2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((DefaultSurfaceProcessor) obj).lambda$release$5();
                break;
            default:
                ProfileInstallerInitializer.writeInBackground((Context) obj);
                break;
        }
    }
}
