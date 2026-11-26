package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.ProgressiveMediaExtractor;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.extractor.ExtractorsFactory;
import com.my.target.c3;
import com.my.target.t2;
import com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneFragment;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class m71 implements xl3, SimpleBasePlayer.PositionSupplier, ProgressiveMediaExtractor.Factory, eh8.a, h06, gv9 {
    public final /* synthetic */ Object b;

    public /* synthetic */ m71(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (List) ((nl3) this.b).invoke(obj);
    }

    @Override // defpackage.gv9
    public void b() {
        c3 c3Var = (c3) this.b;
        t2 t2Var = c3Var.l;
        if (t2Var != null) {
            t2Var.e();
            t2Var.d.destroy();
            t2Var.e.b();
        }
        c3Var.o();
        c3Var.d.b(c3Var.b);
    }

    @Override // defpackage.h06
    public void c(String str) throws IOException {
        VerificationCardPhoneFragment verificationCardPhoneFragment = (VerificationCardPhoneFragment) this.b;
        ze4<Object>[] ze4VarArr = VerificationCardPhoneFragment.m;
        verificationCardPhoneFragment.o().sendSmsCodeFromReceiver(str);
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor.Factory
    public ProgressiveMediaExtractor createProgressiveMediaExtractor(PlayerId playerId) {
        return ProgressiveMediaSource.Factory.lambda$new$0((ExtractorsFactory) this.b, playerId);
    }

    @Override // eh8.a
    public Object execute() {
        return ((vl1) this.b).n();
    }

    @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
    public long get() {
        return ((Player) this.b).getCurrentPosition();
    }
}
