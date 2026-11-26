package defpackage;

import android.app.Activity;
import com.yandex.mobile.ads.common.AdError;
import com.yandex.mobile.ads.common.AdRequest;
import com.yandex.mobile.ads.rewarded.Reward;
import com.yandex.mobile.ads.rewarded.RewardedAd;
import com.yandex.mobile.ads.rewarded.RewardedAdLoadResult;
import com.yandex.mobile.ads.rewarded.RewardedAdLoader;

/* JADX INFO: loaded from: classes5.dex */
public final class p77 extends d8 {
    public RewardedAd a;
    public RewardedAdLoader b;
    public boolean c;

    @bd2(c = "com.warefly.checkscan.presentation.tasks.ads.RewardedYandexAdProvider", f = "RewardedYandexAdProvider.kt", l = {28, 80}, m = "loadAd")
    public static final class a extends f02 {
        public Activity l;
        public nl3 m;
        public ll3 n;
        public ll3 o;
        public /* synthetic */ Object p;
        public int r;

        public a(f02 f02Var) {
            super(f02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.p = obj;
            this.r |= Integer.MIN_VALUE;
            return p77.this.b(null, null, null, null, this);
        }
    }

    public static final class b extends y14 {
        public final /* synthetic */ c31 o;
        public final /* synthetic */ p77 p;
        public final /* synthetic */ nl3<String, j59> q;
        public final /* synthetic */ ll3<j59> r;
        public final /* synthetic */ ll3<j59> s;

        public b(c31 c31Var, p77 p77Var, nl3 nl3Var, ll3 ll3Var, ll3 ll3Var2) {
            this.o = c31Var;
            this.p = p77Var;
            this.q = nl3Var;
            this.r = ll3Var;
            this.s = ll3Var2;
        }

        @Override // com.yandex.mobile.ads.rewarded.RewardedAdEventListener
        public final void onAdDismissed() {
            p77 p77Var = this.p;
            if (p77Var.c) {
                this.q.invoke("YANDEX");
            } else {
                this.r.invoke();
            }
            p77Var.b = null;
            RewardedAd rewardedAd = p77Var.a;
            if (rewardedAd != null) {
                rewardedAd.setAdEventListener(null);
            }
            p77Var.a = null;
        }

        @Override // com.yandex.mobile.ads.rewarded.RewardedAdEventListener
        public final void onAdFailedToShow(AdError adError) {
            adError.getClass();
            c31 c31Var = this.o;
            if (c31Var.t() instanceof no5) {
                c31Var.resumeWith(Boolean.FALSE);
            }
        }

        @Override // com.yandex.mobile.ads.rewarded.RewardedAdEventListener
        public final void onAdShown() {
            this.s.invoke();
            c31 c31Var = this.o;
            if (c31Var.t() instanceof no5) {
                c31Var.resumeWith(Boolean.TRUE);
            }
        }

        @Override // com.yandex.mobile.ads.rewarded.RewardedAdEventListener
        public final void onRewarded(Reward reward) {
            reward.getClass();
            this.p.c = true;
        }
    }

    public static final class c extends gh4 implements nl3<Throwable, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            p77.this.a();
            return j59.a;
        }
    }

    @Override // defpackage.d8
    public final void a() {
        RewardedAdLoader rewardedAdLoader = this.b;
        if (rewardedAdLoader != null) {
            rewardedAdLoader.cancelLoading();
        }
        this.b = null;
        RewardedAd rewardedAd = this.a;
        if (rewardedAd != null) {
            rewardedAd.setAdEventListener(null);
        }
        this.a = null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    @Override // defpackage.d8
    public final Object b(Activity activity, nl3<? super String, j59> nl3Var, ll3<j59> ll3Var, ll3<j59> ll3Var2, e02<? super Boolean> e02Var) throws Throwable {
        a aVar;
        Activity activity2;
        nl3<? super String, j59> nl3Var2;
        ll3<j59> ll3Var3;
        ll3<j59> ll3Var4;
        if (e02Var instanceof a) {
            aVar = (a) e02Var;
            int i = aVar.r;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.r = i - Integer.MIN_VALUE;
            } else {
                aVar = new a((f02) e02Var);
            }
        } else {
            aVar = new a((f02) e02Var);
        }
        Object objLoadAd = aVar.p;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = aVar.r;
        if (i2 == 0) {
            r57.b(objLoadAd);
            RewardedAdLoader rewardedAdLoader = new RewardedAdLoader(activity);
            this.b = rewardedAdLoader;
            AdRequest adRequestBuild = new AdRequest.Builder("R-M-16692974-2").build();
            aVar.l = activity;
            aVar.m = nl3Var;
            aVar.n = ll3Var;
            aVar.o = ll3Var2;
            aVar.r = 1;
            objLoadAd = rewardedAdLoader.loadAd(adRequestBuild, aVar);
            if (objLoadAd != a32Var) {
                activity2 = activity;
                nl3Var2 = nl3Var;
                ll3Var3 = ll3Var;
                ll3Var4 = ll3Var2;
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ll3 ll3Var5 = aVar.o;
            ll3 ll3Var6 = aVar.n;
            r57.b(objLoadAd);
            return objLoadAd;
        }
        ll3Var4 = aVar.o;
        ll3Var3 = aVar.n;
        nl3Var2 = aVar.m;
        activity2 = aVar.l;
        r57.b(objLoadAd);
        RewardedAdLoadResult rewardedAdLoadResult = (RewardedAdLoadResult) objLoadAd;
        if (!(rewardedAdLoadResult instanceof RewardedAdLoadResult.Success)) {
            return Boolean.FALSE;
        }
        aVar.l = activity2;
        aVar.m = nl3Var2;
        aVar.n = ll3Var3;
        aVar.o = ll3Var4;
        RewardedAdLoadResult.Success success = (RewardedAdLoadResult.Success) rewardedAdLoadResult;
        aVar.r = 2;
        c31 c31Var = new c31(1, zya.b(aVar));
        c31Var.u();
        RewardedAd ad = success.getAd();
        this.a = ad;
        if (ad != null) {
            ad.setAdEventListener(new b(c31Var, this, nl3Var2, ll3Var4, ll3Var3));
        }
        RewardedAd rewardedAd = this.a;
        if (rewardedAd != null) {
            rewardedAd.show(activity2);
        }
        c31Var.n(new c());
        Object objS = c31Var.s();
        return objS == a32Var ? a32Var : objS;
    }
}
