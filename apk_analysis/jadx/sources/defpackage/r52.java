package defpackage;

import com.google.android.material.color.utilities.DynamicScheme;
import com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence;
import java.io.File;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class r52 implements Function {
    public final /* synthetic */ int a;

    public /* synthetic */ r52(int i) {
        this.a = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.a) {
            case 0:
                return CrashlyticsReportPersistence.lambda$decorateWithProfilingManagerInfoIfFatal$2((File) obj);
            case 1:
                return ((DynamicScheme) obj).neutralPalette;
            default:
                return ((DynamicScheme) obj).primaryPalette;
        }
    }
}
