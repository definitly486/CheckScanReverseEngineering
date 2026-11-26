package androidx.datastore.core;

import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.xp1;
import java.util.concurrent.CancellationException;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes2.dex */
public final class DataStoreImpl$writeActor$2<T> extends gh4 implements bm3<Message.Update<T>, Throwable, j59> {
    public static final DataStoreImpl$writeActor$2 INSTANCE = new DataStoreImpl$writeActor$2();

    public DataStoreImpl$writeActor$2() {
        super(2);
    }

    public final void invoke(Message.Update<T> update, Throwable th) {
        update.getClass();
        xp1<T> ack = update.getAck();
        if (th == null) {
            th = new CancellationException("DataStore scope was cancelled before updateData could complete");
        }
        ack.e(th);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(Object obj, Throwable th) {
        invoke((Message.Update) obj, th);
        return j59.a;
    }
}
