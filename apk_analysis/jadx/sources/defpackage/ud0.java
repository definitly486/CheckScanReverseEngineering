package defpackage;

import android.animation.Animator;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.source.preload.BasePreloadManager;
import androidx.media3.exoplayer.source.preload.PreloadManagerListener;
import com.google.android.material.animation.AnimatableView;
import com.my.target.f1;
import com.my.target.m1;
import com.my.target.w1;
import com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsFragment;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ud0 implements ListenerSet.Event, xl3, AnimatableView.Listener, h06, m1.b {
    public final /* synthetic */ Object b;

    public /* synthetic */ ud0(f1 f1Var, v2a v2aVar) {
        this.b = f1Var;
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
        ((w1.a) ((f1) this.b).l).getClass();
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (m32) ((vf1) this.b).invoke(obj);
    }

    @Override // defpackage.h06
    public void c(String str) throws IOException {
        VerificationSmsFragment verificationSmsFragment = (VerificationSmsFragment) this.b;
        VerificationSmsFragment.a aVar = VerificationSmsFragment.k;
        verificationSmsFragment.o().sendSmsCodeFromReceiver(str);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        BasePreloadManager.lambda$onCompleted$0((BasePreloadManager.MediaSourceHolder) this.b, (PreloadManagerListener) obj);
    }

    @Override // com.google.android.material.animation.AnimatableView.Listener
    public void onAnimationEnd() {
        ((Animator) this.b).start();
    }

    public /* synthetic */ ud0(Object obj) {
        this.b = obj;
    }
}
