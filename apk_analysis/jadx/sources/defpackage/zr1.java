package defpackage;

import android.content.IntentSender;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import com.tapjoy.internal.p2;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zr1 implements Runnable {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Serializable e;

    public /* synthetic */ zr1(int i, p2 p2Var, String str) {
        this.d = p2Var;
        this.e = str;
        this.c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        int i2 = this.c;
        Serializable serializable = this.e;
        Object obj = this.d;
        switch (i) {
            case 0:
                ComponentActivity$activityResultRegistry$1.onLaunch$lambda$1((ComponentActivity$activityResultRegistry$1) obj, i2, (IntentSender.SendIntentException) serializable);
                break;
            default:
                ((p2) obj).a((String) serializable, i2);
                break;
        }
    }

    public /* synthetic */ zr1(ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1, int i, IntentSender.SendIntentException sendIntentException) {
        this.d = componentActivity$activityResultRegistry$1;
        this.c = i;
        this.e = sendIntentException;
    }
}
