package androidx.datastore.core;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ch5;
import defpackage.e02;
import defpackage.j59;
import defpackage.n07;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r07;
import defpackage.r57;
import defpackage.yg5;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1", f = "DataStoreImpl.kt", l = {437, 458, 546, 468}, m = "invokeSuspend")
public final class DataStoreImpl$InitDataStore$doRun$initData$1<T> extends pg8 implements nl3<e02<? super Data<T>>, Object> {
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;
    final /* synthetic */ DataStoreImpl<T>.InitDataStore this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$InitDataStore$doRun$initData$1(DataStoreImpl<T> dataStoreImpl, DataStoreImpl<T>.InitDataStore initDataStore, e02<? super DataStoreImpl$InitDataStore$doRun$initData$1> e02Var) {
        super(1, e02Var);
        this.this$0 = dataStoreImpl;
        this.this$1 = initDataStore;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new DataStoreImpl$InitDataStore$doRun$initData$1(this.this$0, this.this$1, e02Var);
    }

    @Override // defpackage.nl3
    public final Object invoke(e02<? super Data<T>> e02Var) {
        return ((DataStoreImpl$InitDataStore$doRun$initData$1) create(e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:31:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:35:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:36:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:40:0x010d  */
    /* JADX WARN: Code duplicated, block: B:49:0x010c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:? A[LOOP:0: B:21:0x00a7->B:51:?, LOOP_END, SYNTHETIC] */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws CorruptionException {
        yg5 ch5Var;
        n07 n07Var;
        r07 r07Var;
        r07 r07Var2;
        n07 n07Var2;
        yg5 yg5Var;
        Iterator<T> it;
        yg5 yg5Var2;
        n07 n07Var3;
        r07 r07Var3;
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
        r07 r07Var4;
        bm3 bm3Var;
        T t;
        int iHashCode;
        Object version;
        Object obj2;
        int i;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = this.label;
        if (i2 == 0) {
            r57.b(obj);
            ch5Var = new ch5();
            n07Var = new n07();
            r07Var = new r07();
            DataStoreImpl<T> dataStoreImpl = this.this$0;
            this.L$0 = ch5Var;
            this.L$1 = n07Var;
            this.L$2 = r07Var;
            this.L$3 = r07Var;
            this.label = 1;
            obj = dataStoreImpl.readDataOrHandleCorruption(true, this);
            if (obj != a32Var) {
                r07Var2 = r07Var;
            }
            return a32Var;
        }
        if (i2 == 1) {
            r07Var = (r07) this.L$3;
            r07Var2 = (r07) this.L$2;
            n07Var = (n07) this.L$1;
            ch5Var = (yg5) this.L$0;
            r57.b(obj);
        } else {
            if (i2 == 2) {
                it = (Iterator) this.L$4;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1 = (DataStoreImpl$InitDataStore$doRun$initData$1$api$1) this.L$3;
                r07Var3 = (r07) this.L$2;
                n07Var3 = (n07) this.L$1;
                yg5Var2 = (yg5) this.L$0;
                r57.b(obj);
                while (it.hasNext()) {
                    bm3Var = (bm3) it.next();
                    this.L$0 = yg5Var2;
                    this.L$1 = n07Var3;
                    this.L$2 = r07Var3;
                    this.L$3 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
                    this.L$4 = it;
                    this.label = 2;
                    if (bm3Var.invoke(dataStoreImpl$InitDataStore$doRun$initData$1$api$1, this) == a32Var) {
                        return a32Var;
                    }
                }
                r07Var2 = r07Var3;
                n07Var2 = n07Var3;
                yg5Var = yg5Var2;
                ((DataStoreImpl.InitDataStore) this.this$1).initTasks = null;
                this.L$0 = n07Var2;
                this.L$1 = r07Var2;
                this.L$2 = yg5Var;
                this.L$3 = null;
                this.L$4 = null;
                this.label = 3;
                if (yg5Var.lock(null, this) != a32Var) {
                    r07Var4 = r07Var2;
                    n07Var2.b = true;
                    j59 j59Var = j59.a;
                    yg5Var.unlock(null);
                    t = r07Var4.b;
                    if (t != null) {
                        iHashCode = t.hashCode();
                    } else {
                        iHashCode = 0;
                    }
                    InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                    this.L$0 = t;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.I$0 = iHashCode;
                    this.label = 4;
                    version = coordinator.getVersion(this);
                    if (version != a32Var) {
                        obj = version;
                        obj2 = t;
                        i = iHashCode;
                    }
                }
                return a32Var;
            }
            if (i2 == 3) {
                yg5Var = (yg5) this.L$2;
                r07Var4 = (r07) this.L$1;
                n07Var2 = (n07) this.L$0;
                r57.b(obj);
                try {
                    n07Var2.b = true;
                    j59 j59Var2 = j59.a;
                    yg5Var.unlock(null);
                    t = r07Var4.b;
                    if (t != null) {
                        iHashCode = t.hashCode();
                    } else {
                        iHashCode = 0;
                    }
                    InterProcessCoordinator coordinator2 = this.this$0.getCoordinator();
                    this.L$0 = t;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.I$0 = iHashCode;
                    this.label = 4;
                    version = coordinator2.getVersion(this);
                    if (version != a32Var) {
                        obj = version;
                        obj2 = t;
                        i = iHashCode;
                    }
                    return a32Var;
                } catch (Throwable th) {
                    yg5Var.unlock(null);
                    throw th;
                }
            }
            if (i2 != 4) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = this.I$0;
            obj2 = this.L$0;
            r57.b(obj);
        }
        return new Data(obj2, i, ((Number) obj).intValue());
        r07Var.b = (T) ((Data) obj).getValue();
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$2 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1(ch5Var, n07Var, r07Var2, this.this$0);
        List list = ((DataStoreImpl.InitDataStore) this.this$1).initTasks;
        if (list != null) {
            it = list.iterator();
            yg5Var2 = ch5Var;
            n07Var3 = n07Var;
            r07Var3 = r07Var2;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1 = dataStoreImpl$InitDataStore$doRun$initData$1$api$2;
            while (it.hasNext()) {
                bm3Var = (bm3) it.next();
                this.L$0 = yg5Var2;
                this.L$1 = n07Var3;
                this.L$2 = r07Var3;
                this.L$3 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
                this.L$4 = it;
                this.label = 2;
                if (bm3Var.invoke(dataStoreImpl$InitDataStore$doRun$initData$1$api$1, this) == a32Var) {
                    return a32Var;
                }
            }
            r07Var2 = r07Var3;
            n07Var2 = n07Var3;
            yg5Var = yg5Var2;
        } else {
            n07Var2 = n07Var;
            yg5Var = ch5Var;
        }
        ((DataStoreImpl.InitDataStore) this.this$1).initTasks = null;
        this.L$0 = n07Var2;
        this.L$1 = r07Var2;
        this.L$2 = yg5Var;
        this.L$3 = null;
        this.L$4 = null;
        this.label = 3;
        if (yg5Var.lock(null, this) != a32Var) {
            r07Var4 = r07Var2;
            n07Var2.b = true;
            j59 j59Var3 = j59.a;
            yg5Var.unlock(null);
            t = r07Var4.b;
            if (t != null) {
                iHashCode = t.hashCode();
            } else {
                iHashCode = 0;
            }
            InterProcessCoordinator coordinator3 = this.this$0.getCoordinator();
            this.L$0 = t;
            this.L$1 = null;
            this.L$2 = null;
            this.I$0 = iHashCode;
            this.label = 4;
            version = coordinator3.getVersion(this);
            if (version != a32Var) {
                obj = version;
                obj2 = t;
                i = iHashCode;
                return new Data(obj2, i, ((Number) obj).intValue());
            }
        }
        return a32Var;
    }
}
