package defpackage;

import android.net.Uri;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.google.firebase.dynamiclinks.FirebaseDynamicLinksKt;

/* JADX INFO: loaded from: classes4.dex */
public final class lu2 extends gh4 implements nl3<DynamicLink.Builder, j59> {
    public final /* synthetic */ nu2 f;
    public final /* synthetic */ String g;
    public final /* synthetic */ String h;
    public final /* synthetic */ String i;
    public final /* synthetic */ Uri j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lu2(nu2 nu2Var, String str, String str2, String str3, Uri uri) {
        super(1);
        this.f = nu2Var;
        this.g = str;
        this.h = str2;
        this.i = str3;
        this.j = uri;
    }

    @Override // defpackage.nl3
    public final j59 invoke(DynamicLink.Builder builder) {
        DynamicLink.Builder builder2 = builder;
        builder2.getClass();
        nu2 nu2Var = this.f;
        builder2.setLink(Uri.parse("https://" + nu2Var.a + "/" + this.g));
        builder2.setDomainUriPrefix(nu2Var.b);
        builder2.setAndroidParameters(new DynamicLink.AndroidParameters.Builder(nu2Var.c).build());
        FirebaseDynamicLinksKt.iosParameters(builder2, nu2Var.d, new iu2(nu2Var));
        FirebaseDynamicLinksKt.socialMetaTagParameters(builder2, new ju2(this.j, this.h, this.i));
        FirebaseDynamicLinksKt.googleAnalyticsParameters(builder2, ku2.f);
        return j59.a;
    }
}
