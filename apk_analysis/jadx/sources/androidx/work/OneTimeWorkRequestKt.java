package androidx.work;

import defpackage.aa4;
import defpackage.d31;
import defpackage.ne4;

/* JADX INFO: loaded from: classes3.dex */
public final class OneTimeWorkRequestKt {
    public static final <W extends ListenableWorker> OneTimeWorkRequest.Builder OneTimeWorkRequestBuilder() {
        aa4.i();
        throw null;
    }

    public static final OneTimeWorkRequest.Builder setInputMerger(OneTimeWorkRequest.Builder builder, ne4<? extends InputMerger> ne4Var) {
        builder.getClass();
        ne4Var.getClass();
        return builder.setInputMerger(d31.n(ne4Var));
    }
}
