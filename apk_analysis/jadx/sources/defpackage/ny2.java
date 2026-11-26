package defpackage;

import androidx.camera.camera2.pipe.core.ProcessingQueue;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.room.RoomConnectionManager;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.posthog.PostHogEvent;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.Iterator;
import java.util.List;
import yads.hh1;
import yads.nh1;
import yads.vi1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ny2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ny2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                final db6 db6Var = (db6) obj2;
                final List list = (List) obj;
                list.getClass();
                ta6 ta6Var = db6Var.a;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((PostHogEvent) it.next()).setApiKey(ta6Var.t);
                }
                db6Var.d(db6Var.g(db6Var.f() + ta6Var.G, new nl3() { // from class: bb6
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj3) throws IOException {
                        OutputStream outputStream = (OutputStream) obj3;
                        outputStream.getClass();
                        wd6 wd6VarB = db6Var.a.b();
                        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, ha1.b), 8192);
                        wd6VarB.a.m(list, new hb6().b, bufferedWriter);
                        bufferedWriter.flush();
                        return j59.a;
                    }
                }));
                return j59.a;
            case 1:
                return Float.valueOf(LazyStaggeredGridState.scrollableState$lambda$0((LazyStaggeredGridState) obj2, ((Float) obj).floatValue()));
            case 2:
                return ProcessingQueue.channel$lambda$0((ProcessingQueue) obj2, obj);
            case 3:
                return RoomConnectionManager._init_$lambda$1((RoomConnectionManager) obj2, (SupportSQLiteDatabase) obj);
            case 4:
                return SnapshotMutableStateImpl.component2$lambda$0((SnapshotMutableStateImpl) obj2, obj);
            case 5:
                return TextFieldSelectionManager._get_contextMenuAreaModifier_$lambda$0((TextFieldSelectionManager) obj2, (LayoutCoordinates) obj);
            default:
                return hh1.a((nh1) obj2, (vi1) obj);
        }
    }
}
