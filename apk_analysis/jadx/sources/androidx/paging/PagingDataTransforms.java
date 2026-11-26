package androidx.paging;

import defpackage.bm3;
import defpackage.e02;
import defpackage.nl3;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class PagingDataTransforms {
    public static final <T> PagingData<T> insertFooterItem(PagingData<T> pagingData, TerminalSeparatorType terminalSeparatorType, T t) {
        return PagingDataTransforms__PagingDataTransformsKt.insertFooterItem(pagingData, terminalSeparatorType, t);
    }

    public static final <T> PagingData<T> insertHeaderItem(PagingData<T> pagingData, TerminalSeparatorType terminalSeparatorType, T t) {
        return PagingDataTransforms__PagingDataTransformsKt.insertHeaderItem(pagingData, terminalSeparatorType, t);
    }

    public static final <T, R> PagingData<R> transform(PagingData<T> pagingData, bm3<? super PageEvent<T>, ? super e02<? super PageEvent<R>>, ? extends Object> bm3Var) {
        return PagingDataTransforms__PagingDataTransformsKt.transform(pagingData, bm3Var);
    }

    public static final <T> PagingData<T> filter(PagingData<T> pagingData, Executor executor, nl3<? super T, Boolean> nl3Var) {
        return PagingDataTransforms__PagingDataTransforms_jvmKt.filter(pagingData, executor, nl3Var);
    }

    public static final <T, R> PagingData<R> flatMap(PagingData<T> pagingData, Executor executor, nl3<? super T, ? extends Iterable<? extends R>> nl3Var) {
        return PagingDataTransforms__PagingDataTransforms_jvmKt.flatMap(pagingData, executor, nl3Var);
    }

    public static final <T> PagingData<T> insertFooterItem(PagingData<T> pagingData, T t) {
        return PagingDataTransforms__PagingDataTransformsKt.insertFooterItem(pagingData, t);
    }

    public static final <T> PagingData<T> insertHeaderItem(PagingData<T> pagingData, T t) {
        return PagingDataTransforms__PagingDataTransformsKt.insertHeaderItem(pagingData, t);
    }

    public static final <R, T extends R> PagingData<R> insertSeparators(PagingData<T> pagingData, TerminalSeparatorType terminalSeparatorType, Executor executor, bm3<? super T, ? super T, ? extends R> bm3Var) {
        return PagingDataTransforms__PagingDataTransforms_jvmKt.insertSeparators(pagingData, terminalSeparatorType, executor, bm3Var);
    }

    public static final <T, R> PagingData<R> map(PagingData<T> pagingData, Executor executor, nl3<? super T, ? extends R> nl3Var) {
        return PagingDataTransforms__PagingDataTransforms_jvmKt.map(pagingData, executor, nl3Var);
    }

    public static final <R, T extends R> PagingData<R> insertSeparators(PagingData<T> pagingData, Executor executor, bm3<? super T, ? super T, ? extends R> bm3Var) {
        return PagingDataTransforms__PagingDataTransforms_jvmKt.insertSeparators(pagingData, executor, bm3Var);
    }
}
