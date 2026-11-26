package defpackage;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.send.DataTransportCrashlyticsReportSender;
import yads.bz3;
import yads.e92;
import yads.gl1;
import yads.l66;
import yads.q52;
import yads.ry1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class d92 implements d29, bz3, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ d92(int i) {
        this.b = i;
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 5:
                return e92.e(((Long) obj).longValue());
            case 6:
                return gl1.d(((Long) obj).longValue());
            case 7:
                return q52.a(((Long) obj).longValue());
            default:
                return ry1.c(((Double) obj).doubleValue());
        }
    }

    @Override // defpackage.d29
    public Object apply(Object obj) {
        return DataTransportCrashlyticsReportSender.lambda$static$0((CrashlyticsReport) obj);
    }
}
