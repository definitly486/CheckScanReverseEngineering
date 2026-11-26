package defpackage;

import com.google.firebase.dynamiclinks.DynamicLink;

/* JADX INFO: loaded from: classes4.dex */
public final class ku2 extends gh4 implements nl3<DynamicLink.GoogleAnalyticsParameters.Builder, j59> {
    public static final ku2 f = new ku2(1);

    @Override // defpackage.nl3
    public final j59 invoke(DynamicLink.GoogleAnalyticsParameters.Builder builder) {
        DynamicLink.GoogleAnalyticsParameters.Builder builder2 = builder;
        builder2.getClass();
        builder2.setSource("android-google");
        builder2.setMedium("user-referrer");
        builder2.setCampaign("dynamic-link");
        return j59.a;
    }
}
