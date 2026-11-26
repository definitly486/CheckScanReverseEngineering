package androidx.privacysandbox.ads.adservices.customaudience;

import android.content.Context;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
public final class CustomAudienceManager$Companion$obtain$1 extends gh4 implements nl3<Context, CustomAudienceManagerApi31Ext9Impl> {
    final /* synthetic */ Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomAudienceManager$Companion$obtain$1(Context context) {
        super(1);
        this.$context = context;
    }

    @Override // defpackage.nl3
    public final CustomAudienceManagerApi31Ext9Impl invoke(Context context) {
        context.getClass();
        return new CustomAudienceManagerApi31Ext9Impl(this.$context);
    }
}
