package defpackage;

import androidx.camera.camera2.pipe.config.ThreadConfigModule;
import androidx.room.RoomDatabase;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class v77 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ v77(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return RoomDatabase.runInTransaction$lambda$10((Runnable) obj);
            default:
                return ThreadConfigModule.provideTestOnlyThreads$lambda$1((Executor) obj);
        }
    }
}
