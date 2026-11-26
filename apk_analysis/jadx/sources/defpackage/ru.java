package defpackage;

import androidx.camera.video.internal.audio.AudioSource;
import yads.nm;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ru implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ru(int i, Object obj, boolean z) {
        this.b = i;
        this.d = obj;
        this.c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        boolean z = this.c;
        Object obj = this.d;
        switch (i) {
            case 0:
                AudioSource.lambda$notifySilenced$9((AudioSource.AudioSourceCallback) obj, z);
                break;
            default:
                ((nm) obj).a(z);
                break;
        }
    }
}
