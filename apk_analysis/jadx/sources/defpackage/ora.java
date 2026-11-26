package defpackage;

import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes4.dex */
public final class ora<T> implements OnSuccessListener, OnFailureListener, OnCanceledListener {
    public final Object b = new Object();
    public final int c;
    public final lgc d;
    public int e;
    public int f;
    public int g;
    public Exception h;
    public boolean i;

    public ora(int i, lgc lgcVar) {
        this.c = i;
        this.d = lgcVar;
    }

    public final void a() {
        int i = this.e;
        int i2 = this.f;
        int i3 = i + i2 + this.g;
        int i4 = this.c;
        if (i3 == i4) {
            Exception exc = this.h;
            lgc lgcVar = this.d;
            if (exc == null) {
                if (this.i) {
                    lgcVar.d();
                    return;
                } else {
                    lgcVar.a(null);
                    return;
                }
            }
            int length = String.valueOf(i2).length();
            StringBuilder sb = new StringBuilder(String.valueOf(i4).length() + length + 8 + 24);
            sb.append(i2);
            sb.append(" out of ");
            sb.append(i4);
            sb.append(" underlying tasks failed");
            lgcVar.c(new ExecutionException(sb.toString(), this.h));
        }
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void onCanceled() {
        synchronized (this.b) {
            this.g++;
            this.i = true;
            a();
        }
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        synchronized (this.b) {
            this.f++;
            this.h = exc;
            a();
        }
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(T t) {
        synchronized (this.b) {
            this.e++;
            a();
        }
    }
}
