package defpackage;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.cloudmessaging.zzt;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public abstract class udc {
    public final int a;
    public final TaskCompletionSource b = new TaskCompletionSource();
    public final int c;
    public final Bundle d;

    public udc(int i, int i2, Bundle bundle) {
        this.a = i;
        this.c = i2;
        this.d = bundle;
    }

    public abstract boolean a();

    public abstract void b(Bundle bundle);

    public final void c(Bundle bundle) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String string = toString();
            String strValueOf = String.valueOf(bundle);
            Log.d("MessengerIpcClient", dg.c(new StringBuilder(string.length() + 16 + strValueOf.length()), "Finishing ", string, " with ", strValueOf));
        }
        this.b.setResult(bundle);
    }

    public final void d(zzt zztVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String string = toString();
            String string2 = zztVar.toString();
            Log.d("MessengerIpcClient", dg.c(new StringBuilder(string.length() + 14 + string2.length()), "Failing ", string, " with ", string2));
        }
        this.b.setException(zztVar);
    }

    public final String toString() {
        int i = this.c;
        int length = String.valueOf(i).length();
        int i2 = this.a;
        int length2 = String.valueOf(i2).length();
        boolean zA = a();
        StringBuilder sb = new StringBuilder(length + 19 + length2 + 8 + String.valueOf(zA).length() + 1);
        sb.append("Request { what=");
        sb.append(i);
        sb.append(" id=");
        sb.append(i2);
        sb.append(" oneWay=");
        sb.append(zA);
        sb.append("}");
        return sb.toString();
    }
}
