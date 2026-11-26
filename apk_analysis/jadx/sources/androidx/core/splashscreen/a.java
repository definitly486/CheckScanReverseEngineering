package androidx.core.splashscreen;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements SplashScreen.KeepOnScreenCondition {
    @Override // androidx.core.splashscreen.SplashScreen.KeepOnScreenCondition
    public final boolean shouldKeepOnScreen() {
        return SplashScreen.Impl.splashScreenWaitPredicate$lambda$0();
    }
}
