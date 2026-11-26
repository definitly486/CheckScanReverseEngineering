package defpackage;

import com.google.firebase.crashlytics.internal.common.SessionReportingCoordinator;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.Comparator;
import yads.ln5;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class cr7 implements Comparator {
    public final /* synthetic */ int b;

    public /* synthetic */ cr7(int i) {
        this.b = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return SessionReportingCoordinator.lambda$getSortedCustomAttributes$4((CrashlyticsReport.CustomAttribute) obj, (CrashlyticsReport.CustomAttribute) obj2);
            default:
                return Float.compare(((ln5) obj).c, ((ln5) obj2).c);
        }
    }
}
