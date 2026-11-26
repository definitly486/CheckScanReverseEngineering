package defpackage;

import android.content.Context;
import androidx.camera.camera2.adapter.PipeCameraPresenceSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.work.impl.WorkDatabase;
import yads.hi6;
import yads.pb4;
import yads.qb4;
import yads.x85;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class xq implements Arrangement.SpacingAlignmentCalculator, xl3, CallbackToFutureAdapter.Resolver, SupportSQLiteOpenHelper.Factory, x85 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ xq(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // yads.x85
    public void a(hi6 hi6Var) {
        qb4.a((pb4) this.c, hi6Var);
    }

    @Override // androidx.compose.foundation.layout.Arrangement.SpacingAlignmentCalculator
    public int align(int i, LayoutDirection layoutDirection) {
        return Arrangement.aligned$lambda$1((Alignment.Vertical) this.c, i, layoutDirection);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 1:
                return (kv.a) ((nl3) obj2).invoke(obj);
            case 2:
                return (qq1) ((kp0) obj2).invoke(obj);
            default:
                return ((c68) obj2).invoke(obj);
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return PipeCameraPresenceSource.fetchData$lambda$0((PipeCameraPresenceSource) this.c, completer);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    public SupportSQLiteOpenHelper create(SupportSQLiteOpenHelper.Configuration configuration) {
        return WorkDatabase.Companion.create$lambda$0((Context) this.c, configuration);
    }
}
