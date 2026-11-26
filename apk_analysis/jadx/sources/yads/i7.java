package yads;

import com.monetization.ads.quality.base.AdQualityVerificationIncidentListener;
import com.monetization.ads.quality.base.AdQualityVerifierAdapter;
import com.monetization.ads.quality.base.model.configuration.AdQualityVerifierAdapterConfiguration;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class i7 implements i8 {
    public final AdQualityVerifierAdapter a;
    public final AdQualityVerifierAdapterConfiguration b;
    public final long c;
    public final g8 d;
    public final w7 e;
    public final x7 f;

    public i7(AdQualityVerifierAdapter adQualityVerifierAdapter, AdQualityVerifierAdapterConfiguration adQualityVerifierAdapterConfiguration, long j, g8 g8Var, w7 w7Var) {
        x7 x7Var = new x7();
        this.a = adQualityVerifierAdapter;
        this.b = adQualityVerifierAdapterConfiguration;
        this.c = j;
        this.d = g8Var;
        this.e = w7Var;
        this.f = x7Var;
    }

    @Override // yads.i8
    public final void a(AdQualityVerificationIncidentListener adQualityVerificationIncidentListener) {
        this.a.setIncidentListener(adQualityVerificationIncidentListener);
    }

    @Override // yads.i8
    public final void onAdDisplayed() {
        try {
            this.a.onAdDisplayed();
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
    }

    @Override // yads.i8
    public final void onInvalidated() {
        try {
            this.a.onInvalidated();
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
    }
}
