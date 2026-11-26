package defpackage;

import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.tapjoy.TapjoyConnectCore;
import com.warefly.checkscan.R;
import yads.qi1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a80 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ a80(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0084  */
    @Override // java.lang.Runnable
    public final void run() {
        int i;
        Animation animationLoadAnimation;
        int i2 = this.b;
        Object obj = this.c;
        switch (i2) {
            case 0:
                i80 i80Var = (i80) obj;
                i80.a aVar = i80Var.c;
                int i3 = i80.b.e[aVar.v.ordinal()];
                if (i3 == 1) {
                    int i4 = i80.b.a[aVar.k.ordinal()];
                    if (i4 == 1) {
                        i = R.anim.balloon_heartbeat_top;
                    } else if (i4 == 2) {
                        i = R.anim.balloon_heartbeat_bottom;
                    } else if (i4 == 3) {
                        i = R.anim.balloon_heartbeat_right;
                    } else if (i4 != 4) {
                        me0.e();
                    } else {
                        i = R.anim.balloon_heartbeat_left;
                    }
                } else if (i3 != 2) {
                    if (i3 != 3) {
                        animationLoadAnimation = null;
                    } else {
                        i = R.anim.balloon_fade;
                    }
                    if (animationLoadAnimation != null) {
                        i80Var.d.balloon.startAnimation(animationLoadAnimation);
                    }
                } else {
                    int i5 = i80.b.a[aVar.k.ordinal()];
                    if (i5 == 1) {
                        i = R.anim.balloon_shake_top;
                    } else if (i5 == 2) {
                        i = R.anim.balloon_shake_bottom;
                    } else if (i5 == 3) {
                        i = R.anim.balloon_shake_right;
                    } else if (i5 != 4) {
                        me0.e();
                    } else {
                        i = R.anim.balloon_shake_left;
                    }
                }
                animationLoadAnimation = AnimationUtils.loadAnimation(i80Var.b, i);
                if (animationLoadAnimation != null) {
                    i80Var.d.balloon.startAnimation(animationLoadAnimation);
                }
                break;
            case 1:
                ((TapjoyConnectCore) obj).b();
                break;
            default:
                qi1.a((r07) obj);
                break;
        }
    }
}
