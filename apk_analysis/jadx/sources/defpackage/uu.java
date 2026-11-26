package defpackage;

import androidx.camera.video.internal.audio.AudioSource;
import yads.j5;
import yads.nm;
import yads.q25;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class uu implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ uu(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        j59 j59Var;
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((AudioSource) obj2).lambda$postMaxAmplitude$11((AudioSource.AudioSourceCallback) obj);
                break;
            case 1:
                to1 to1Var = (to1) obj2;
                so1[] so1VarArr = (so1[]) obj;
                to1Var.getClass();
                so1VarArr.getClass();
                zl5 zl5Var = to1Var.a;
                if (zl5Var == null) {
                    j59Var = null;
                } else {
                    zl5Var.a(so1VarArr);
                    j59Var = j59.a;
                }
                if (j59Var == null) {
                    to1Var.b.add(so1VarArr);
                }
                break;
            case 2:
                ((nm) obj2).d((Exception) obj);
                break;
            default:
                q25.a((q25) obj2, (j5) obj);
                break;
        }
    }
}
