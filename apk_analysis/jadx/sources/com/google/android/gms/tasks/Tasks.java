package com.google.android.gms.tasks;

import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.tasks.zza;
import defpackage.bec;
import defpackage.hh5;
import defpackage.iwa;
import defpackage.lgc;
import defpackage.o2;
import defpackage.ora;
import defpackage.pva;
import defpackage.th5;
import defpackage.uoa;
import defpackage.zm5;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
public final class Tasks {
    public static Object a(Task task) throws ExecutionException {
        if (task.isSuccessful()) {
            return task.getResult();
        }
        if (task.isCanceled()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(task.getException());
    }

    public static <TResult> TResult await(Task<TResult> task, long j, TimeUnit timeUnit) {
        Preconditions.checkNotMainThread();
        Preconditions.checkNotGoogleApiHandlerThread();
        Preconditions.checkNotNull(task, "Task must not be null");
        Preconditions.checkNotNull(timeUnit, "TimeUnit must not be null");
        if (task.isComplete()) {
            return (TResult) a(task);
        }
        uoa uoaVar = new uoa();
        bec becVar = TaskExecutors.a;
        task.addOnSuccessListener(becVar, uoaVar);
        task.addOnFailureListener(becVar, uoaVar);
        task.addOnCanceledListener(becVar, uoaVar);
        if (uoaVar.b.await(j, timeUnit)) {
            return (TResult) a(task);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    @Deprecated
    public static <TResult> Task<TResult> call(Executor executor, Callable<TResult> callable) {
        Preconditions.checkNotNull(executor, "Executor must not be null");
        Preconditions.checkNotNull(callable, "Callback must not be null");
        lgc lgcVar = new lgc();
        executor.execute(new pva(lgcVar, callable));
        return lgcVar;
    }

    public static <TResult> Task<TResult> forCanceled() {
        lgc lgcVar = new lgc();
        lgcVar.d();
        return lgcVar;
    }

    public static <TResult> Task<TResult> forException(Exception exc) {
        lgc lgcVar = new lgc();
        lgcVar.c(exc);
        return lgcVar;
    }

    public static <TResult> Task<TResult> forResult(TResult tresult) {
        lgc lgcVar = new lgc();
        lgcVar.a(tresult);
        return lgcVar;
    }

    public static Task<Void> whenAll(Collection<? extends Task<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return forResult(null);
        }
        Iterator<? extends Task<?>> it = collection.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                o2.d("null tasks are not accepted");
                return null;
            }
        }
        lgc lgcVar = new lgc();
        ora oraVar = new ora(collection.size(), lgcVar);
        for (Task<?> task : collection) {
            bec becVar = TaskExecutors.a;
            task.addOnSuccessListener(becVar, oraVar);
            task.addOnFailureListener(becVar, oraVar);
            task.addOnCanceledListener(becVar, oraVar);
        }
        return lgcVar;
    }

    public static Task<List<Task<?>>> whenAllComplete(Executor executor, Collection<? extends Task<?>> collection) {
        return (collection == null || collection.isEmpty()) ? forResult(Collections.EMPTY_LIST) : whenAll(collection).continueWithTask(executor, new th5(collection));
    }

    public static <TResult> Task<List<TResult>> whenAllSuccess(Executor executor, Collection<? extends Task> collection) {
        return (collection == null || collection.isEmpty()) ? forResult(Collections.EMPTY_LIST) : (Task<List<TResult>>) whenAll((Collection<? extends Task<?>>) collection).continueWith(executor, new zm5(collection));
    }

    public static <T> Task<T> withTimeout(Task<T> task, long j, TimeUnit timeUnit) {
        Preconditions.checkNotNull(task, "Task must not be null");
        Preconditions.checkArgument(j > 0, "Timeout must be positive");
        Preconditions.checkNotNull(timeUnit, "TimeUnit must not be null");
        iwa iwaVar = new iwa();
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource(iwaVar);
        zza zzaVar = new zza(Looper.getMainLooper());
        zzaVar.postDelayed(new Runnable() { // from class: ara
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                taskCompletionSource.trySetException(new TimeoutException());
            }
        }, timeUnit.toMillis(j));
        task.addOnCompleteListener(new hh5(zzaVar, taskCompletionSource, iwaVar));
        return taskCompletionSource.getTask();
    }

    @Deprecated
    public static <TResult> Task<TResult> call(Callable<TResult> callable) {
        return call(TaskExecutors.MAIN_THREAD, callable);
    }

    public static Task<List<Task<?>>> whenAllComplete(Collection<? extends Task<?>> collection) {
        return whenAllComplete(TaskExecutors.MAIN_THREAD, collection);
    }

    public static <TResult> Task<List<TResult>> whenAllSuccess(Collection<? extends Task> collection) {
        return whenAllSuccess(TaskExecutors.MAIN_THREAD, collection);
    }

    public static Task<List<Task<?>>> whenAllComplete(Executor executor, Task<?>... taskArr) {
        if (taskArr != null && taskArr.length != 0) {
            return whenAllComplete(executor, Arrays.asList(taskArr));
        }
        return forResult(Collections.EMPTY_LIST);
    }

    public static <TResult> Task<List<TResult>> whenAllSuccess(Executor executor, Task... taskArr) {
        if (taskArr != null && taskArr.length != 0) {
            return whenAllSuccess(executor, Arrays.asList(taskArr));
        }
        return forResult(Collections.EMPTY_LIST);
    }

    public static Task<List<Task<?>>> whenAllComplete(Task<?>... taskArr) {
        if (taskArr != null && taskArr.length != 0) {
            return whenAllComplete(Arrays.asList(taskArr));
        }
        return forResult(Collections.EMPTY_LIST);
    }

    public static <TResult> Task<List<TResult>> whenAllSuccess(Task... taskArr) {
        if (taskArr != null && taskArr.length != 0) {
            return whenAllSuccess(Arrays.asList(taskArr));
        }
        return forResult(Collections.EMPTY_LIST);
    }

    public static <TResult> TResult await(Task<TResult> task) {
        Preconditions.checkNotMainThread();
        Preconditions.checkNotGoogleApiHandlerThread();
        Preconditions.checkNotNull(task, "Task must not be null");
        if (task.isComplete()) {
            return (TResult) a(task);
        }
        uoa uoaVar = new uoa();
        bec becVar = TaskExecutors.a;
        task.addOnSuccessListener(becVar, uoaVar);
        task.addOnFailureListener(becVar, uoaVar);
        task.addOnCanceledListener(becVar, uoaVar);
        uoaVar.b.await();
        return (TResult) a(task);
    }

    public static Task<Void> whenAll(Task<?>... taskArr) {
        if (taskArr != null && taskArr.length != 0) {
            return whenAll(Arrays.asList(taskArr));
        }
        return forResult(null);
    }
}
