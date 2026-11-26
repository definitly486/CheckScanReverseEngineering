package defpackage;

import android.net.Uri;
import com.google.firebase.dynamiclinks.DynamicLink;

/* JADX INFO: loaded from: classes4.dex */
public final class ju2 extends gh4 implements nl3<DynamicLink.SocialMetaTagParameters.Builder, j59> {
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;
    public final /* synthetic */ Uri h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ju2(Uri uri, String str, String str2) {
        super(1);
        this.f = str;
        this.g = str2;
        this.h = uri;
    }

    @Override // defpackage.nl3
    public final j59 invoke(DynamicLink.SocialMetaTagParameters.Builder builder) {
        DynamicLink.SocialMetaTagParameters.Builder builder2 = builder;
        builder2.getClass();
        builder2.setTitle(this.f);
        builder2.setDescription(this.g);
        builder2.setImageUrl(this.h);
        return j59.a;
    }
}
