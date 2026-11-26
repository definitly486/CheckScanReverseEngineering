package androidx.datastore.core;

import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bm3;
import defpackage.e02;
import defpackage.n07;
import defpackage.r07;
import defpackage.r57;
import defpackage.yg5;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes2.dex */
public final class DataStoreImpl$InitDataStore$doRun$initData$1$api$1<T> implements InitializerApi<T> {
    final /* synthetic */ r07<T> $currentData;
    final /* synthetic */ n07 $initializationComplete;
    final /* synthetic */ yg5 $updateLock;
    final /* synthetic */ DataStoreImpl<T> this$0;

    public DataStoreImpl$InitDataStore$doRun$initData$1$api$1(yg5 yg5Var, n07 n07Var, r07<T> r07Var, DataStoreImpl<T> dataStoreImpl) {
        this.$updateLock = yg5Var;
        this.$initializationComplete = n07Var;
        this.$currentData = r07Var;
        this.this$0 = dataStoreImpl;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00b4 A[Catch: all -> 0x0052, TRY_LEAVE, TryCatch #1 {all -> 0x0052, blocks: (B:21:0x004e, B:35:0x00ac, B:37:0x00b4), top: B:53:0x004e }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.datastore.core.InitializerApi
    public Object updateData(bm3<? super T, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) throws Throwable {
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;
        yg5 yg5Var;
        n07 n07Var;
        r07<T> r07Var;
        DataStoreImpl dataStoreImpl;
        yg5 yg5Var2;
        yg5 yg5Var3;
        r07<T> r07Var2;
        DataStoreImpl dataStoreImpl2;
        T t;
        if (e02Var instanceof DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) {
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = (DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) e02Var;
            int i = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = i - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1(this, e02Var);
            }
        } else {
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1(this, e02Var);
        }
        Object obj = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.result;
        Object obj2 = a32.COROUTINE_SUSPENDED;
        int i2 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                yg5Var = this.$updateLock;
                n07Var = this.$initializationComplete;
                r07Var = this.$currentData;
                DataStoreImpl dataStoreImpl3 = (DataStoreImpl<T>) this.this$0;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0 = bm3Var;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1 = yg5Var;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2 = n07Var;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$3 = r07Var;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$4 = dataStoreImpl3;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = 1;
                dataStoreImpl = dataStoreImpl3;
                if (yg5Var.lock(null, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) != obj2) {
                }
                return obj2;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    t = (T) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2;
                    r07Var2 = (r07) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1;
                    yg5Var2 = (yg5) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0;
                    try {
                        r57.b(obj);
                        r07Var2.b = t;
                        T t2 = r07Var2.b;
                        yg5Var2.unlock(null);
                        return t2;
                    } catch (Throwable th) {
                        th = th;
                        yg5Var2.unlock(null);
                        throw th;
                    }
                }
                DataStoreImpl dataStoreImpl4 = (DataStoreImpl) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2;
                r07Var2 = (r07) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1;
                yg5Var3 = (yg5) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0;
                try {
                    r57.b(obj);
                    dataStoreImpl2 = dataStoreImpl4;
                    if (!aa4.e(obj, r07Var2.b)) {
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0 = yg5Var3;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1 = r07Var2;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2 = obj;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = 3;
                        if (dataStoreImpl2.writeData$datastore_core_release(obj, false, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) != obj2) {
                            t = (T) obj;
                            yg5Var2 = yg5Var3;
                            r07Var2.b = t;
                        }
                        return obj2;
                    }
                    yg5Var2 = yg5Var3;
                    T t3 = r07Var2.b;
                    yg5Var2.unlock(null);
                    return t3;
                } catch (Throwable th2) {
                    th = th2;
                    yg5Var2 = yg5Var3;
                    yg5Var2.unlock(null);
                    throw th;
                }
            }
            DataStoreImpl dataStoreImpl5 = (DataStoreImpl<T>) ((DataStoreImpl) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$4);
            r07<T> r07Var3 = (r07) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$3;
            n07Var = (n07) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2;
            yg5 yg5Var4 = (yg5) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1;
            bm3<? super T, ? super e02<? super T>, ? extends Object> bm3Var2 = (bm3) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0;
            r57.b(obj);
            r07Var = r07Var3;
            bm3Var = bm3Var2;
            yg5Var = yg5Var4;
            dataStoreImpl = dataStoreImpl5;
            if (n07Var.b) {
                throw new IllegalStateException("InitializerApi.updateData should not be called after initialization is complete.");
            }
            T t4 = r07Var.b;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0 = yg5Var;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1 = r07Var;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2 = dataStoreImpl;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$3 = null;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$4 = null;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = 2;
            Object objInvoke = bm3Var.invoke(t4, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1);
            if (objInvoke != obj2) {
                yg5Var3 = yg5Var;
                obj = objInvoke;
                r07Var2 = r07Var;
                dataStoreImpl2 = dataStoreImpl;
                if (!aa4.e(obj, r07Var2.b)) {
                    dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0 = yg5Var3;
                    dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1 = r07Var2;
                    dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2 = obj;
                    dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = 3;
                    if (dataStoreImpl2.writeData$datastore_core_release(obj, false, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) != obj2) {
                        t = (T) obj;
                        yg5Var2 = yg5Var3;
                        r07Var2.b = t;
                    }
                } else {
                    yg5Var2 = yg5Var3;
                }
                T t5 = r07Var2.b;
                yg5Var2.unlock(null);
                return t5;
            }
            return obj2;
        } catch (Throwable th3) {
            th = th3;
            yg5Var2 = yg5Var;
            yg5Var2.unlock(null);
            throw th;
        }
    }
}
