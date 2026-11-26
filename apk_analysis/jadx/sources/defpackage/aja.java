package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zaba;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: loaded from: classes4.dex */
public final class aja extends pja {
    public final /* synthetic */ BaseGmsClient.ConnectionProgressReportCallbacks b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aja(bja bjaVar, zaba zabaVar, BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        super(zabaVar);
        this.b = connectionProgressReportCallbacks;
    }

    @Override // defpackage.pja
    public final void a() {
        this.b.onReportServiceBinding(new ConnectionResult(16, null));
    }
}
