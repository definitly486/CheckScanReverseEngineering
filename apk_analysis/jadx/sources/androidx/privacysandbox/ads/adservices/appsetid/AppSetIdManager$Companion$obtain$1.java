package androidx.privacysandbox.ads.adservices.appsetid;

import android.content.Context;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
public final class AppSetIdManager$Companion$obtain$1 extends gh4 implements nl3<Context, AppSetIdManagerApi31Ext9Impl> {
    final /* synthetic */ Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppSetIdManager$Companion$obtain$1(Context context) {
        super(1);
        this.$context = context;
    }

    @Override // defpackage.nl3
    public final AppSetIdManagerApi31Ext9Impl invoke(Context context) {
        context.getClass();
        return new AppSetIdManagerApi31Ext9Impl(this.$context);
    }
}
