package defpackage;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.compose.material3.DefaultTwoRowsTopAppBarOverride;
import androidx.compose.material3.TwoRowsTopAppBarOverrideScope;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import yads.pp;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j22 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ j22(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return CoroutineAdaptersKt.asListenableFuture$lambda$0$0((CallbackToFutureAdapter.Completer) obj2, (Throwable) obj);
            case 1:
                return DefaultTwoRowsTopAppBarOverride.TwoRowsTopAppBar$lambda$15$lambda$14((TwoRowsTopAppBarOverrideScope) obj2, ((Float) obj).floatValue());
            case 2:
                return Integer.valueOf(WorkSpecDao_Impl.setCancelledState$lambda$39("UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?", (String) obj2, (SQLiteConnection) obj));
            default:
                return pp.a((pp) obj2, (Throwable) obj);
        }
    }
}
