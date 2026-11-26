package androidx.activity.compose;

import androidx.activity.FullyDrawnReporter;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import defpackage.j59;
import defpackage.ll3;
import defpackage.n07;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class ReportDrawnComposition implements ll3<j59> {
    private final nl3<ll3<Boolean>, j59> checkReporter;
    private final FullyDrawnReporter fullyDrawnReporter;
    private final ll3<Boolean> predicate;
    private final SnapshotStateObserver snapshotStateObserver;

    public ReportDrawnComposition(FullyDrawnReporter fullyDrawnReporter, ll3<Boolean> ll3Var) {
        this.fullyDrawnReporter = fullyDrawnReporter;
        this.predicate = ll3Var;
        SnapshotStateObserver snapshotStateObserver = new SnapshotStateObserver(new l());
        snapshotStateObserver.start();
        this.snapshotStateObserver = snapshotStateObserver;
        this.checkReporter = new ReportDrawnComposition$checkReporter$1(this);
        fullyDrawnReporter.addOnReportDrawnListener(this);
        if (fullyDrawnReporter.isFullyDrawnReported()) {
            return;
        }
        fullyDrawnReporter.addReporter();
        observeReporter(ll3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void observeReporter(final ll3<Boolean> ll3Var) {
        final n07 n07Var = new n07();
        this.snapshotStateObserver.observeReads(ll3Var, this.checkReporter, new ll3() { // from class: androidx.activity.compose.m
            @Override // defpackage.ll3
            public final Object invoke() {
                return ReportDrawnComposition.observeReporter$lambda$0(n07Var, ll3Var);
            }
        });
        if (n07Var.b) {
            removeReporter();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 observeReporter$lambda$0(n07 n07Var, ll3 ll3Var) {
        n07Var.b = ((Boolean) ll3Var.invoke()).booleanValue();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 snapshotStateObserver$lambda$0(ll3 ll3Var) {
        ll3Var.invoke();
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2() {
        this.snapshotStateObserver.clear();
        this.snapshotStateObserver.stop();
    }

    public final void removeReporter() {
        this.snapshotStateObserver.clear(this.predicate);
        if (!this.fullyDrawnReporter.isFullyDrawnReported()) {
            this.fullyDrawnReporter.removeReporter();
        }
        invoke2();
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
