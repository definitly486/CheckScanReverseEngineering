package defpackage;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.widget.ImageView;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.PrintWriter;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes5.dex */
public final class sj0 implements k29, eu7, RemoteCall {
    public static final /* synthetic */ sj0 c = new sj0(4);
    public final /* synthetic */ int b;

    public /* synthetic */ sj0(int i) {
        this.b = i;
    }

    public static void c(Throwable th, Throwable th2) {
        th.getClass();
        th2.getClass();
        if (th != th2) {
            f96.a.a(th, th2);
        }
    }

    public static String d(Throwable th) {
        th.getClass();
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        String string = stringWriter.toString();
        string.getClass();
        return string;
    }

    @Override // defpackage.k29
    public boolean a(Object obj, l24 l24Var) {
        Drawable drawable = (Drawable) obj;
        ImageView imageView = l24Var.b;
        Drawable drawable2 = imageView.getDrawable();
        if (drawable2 == null) {
            drawable2 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{drawable2, drawable});
        transitionDrawable.setCrossFadeEnabled(false);
        transitionDrawable.startTransition(300);
        imageView.setImageDrawable(transitionDrawable);
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        ((zzec) obj).zzB((TaskCompletionSource) obj2);
    }

    @Override // defpackage.eu7
    public hd3 b(y68 y68Var) {
        return new rd3(cu7.START);
    }

    public String toString() {
        switch (this.b) {
            case 3:
                return "SharingStarted.Eagerly";
            default:
                return super.toString();
        }
    }
}
