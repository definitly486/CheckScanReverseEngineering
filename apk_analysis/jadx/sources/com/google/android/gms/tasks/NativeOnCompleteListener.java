package com.google.android.gms.tasks;

/* JADX INFO: loaded from: classes4.dex */
public class NativeOnCompleteListener implements OnCompleteListener<Object> {
    public final long b;

    public NativeOnCompleteListener(long j) {
        this.b = j;
    }

    public static void createAndAddCallback(Task<Object> task, long j) {
        task.addOnCompleteListener(new NativeOnCompleteListener(j));
    }

    public native void nativeOnComplete(long j, Object obj, boolean z, boolean z2, String str);

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task<Object> task) {
        Object result;
        String message;
        Exception exception;
        if (task.isSuccessful()) {
            result = task.getResult();
            message = null;
        } else if (task.isCanceled() || (exception = task.getException()) == null) {
            result = null;
            message = null;
        } else {
            message = exception.getMessage();
            result = null;
        }
        nativeOnComplete(this.b, result, task.isSuccessful(), task.isCanceled(), message);
    }
}
