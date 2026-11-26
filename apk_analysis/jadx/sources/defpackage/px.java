package defpackage;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class px implements RemoteCall, rxa {
    public static final px c = new px(0);
    public static final px d = new px(1);
    public static final bh8 e = new bh8("NONE");
    public static final bh8 f = new bh8("PENDING");
    public static final /* synthetic */ px g = new px(4);
    public static final /* synthetic */ px h = new px(5);
    public static final /* synthetic */ px i = new px(6);
    public final /* synthetic */ int b;

    public /* synthetic */ px(int i2) {
        this.b = i2;
    }

    public static final z68 a(Object obj) {
        if (obj == null) {
            obj = aq5.b;
        }
        return new z68(obj);
    }

    public static final Object c(hd3 hd3Var, bm3 bm3Var, e02 e02Var) {
        Object objCollect = ud3.a(se3.a(hd3Var, bm3Var), 0).collect(lo5.b, e02Var);
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (objCollect != a32Var) {
            objCollect = j59.a;
        }
        return objCollect == a32Var ? objCollect : j59.a;
    }

    public static final Object f(id3 id3Var, hd3 hd3Var, pg8 pg8Var) throws Throwable {
        if (id3Var instanceof yt8) {
            throw ((yt8) id3Var).b;
        }
        Object objCollect = hd3Var.collect(id3Var, pg8Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }

    public static final s68 h(hd3 hd3Var, y22 y22Var) {
        return av0.c(y22Var, null, null, new td3(hd3Var, null), 3);
    }

    public static boolean k(byte b) {
        return b > -65;
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        ((zzec) obj).zzy((TaskCompletionSource) obj2);
    }

    public void b(i87 i87Var, z47 z47Var) {
        z47Var.getClass();
    }

    public void d(File file) throws IOException {
        file.getClass();
        if (file.delete() || !file.exists()) {
            return;
        }
        av.c(file, "failed to delete ");
    }

    public void e(File file) throws IOException {
        file.getClass();
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            av.c(file, "not a readable directory: ");
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                e(file2);
            }
            if (!file2.delete()) {
                av.c(file2, "failed to delete ");
                return;
            }
        }
    }

    public boolean g(File file) {
        file.getClass();
        return file.exists();
    }

    public void i(File file, File file2) throws IOException {
        file.getClass();
        file2.getClass();
        d(file2);
        if (file.renameTo(file2)) {
            return;
        }
        throw new IOException("failed to rename " + file + " to " + file2);
    }

    public t06 j(File file) {
        file.getClass();
        try {
            return new t06(new FileOutputStream(file, false), new wv8());
        } catch (FileNotFoundException unused) {
            file.getParentFile().mkdirs();
            return new t06(new FileOutputStream(file, false), new wv8());
        }
    }

    public String toString() {
        switch (this.b) {
            case 1:
                return "FileSystem.SYSTEM";
            default:
                return super.toString();
        }
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 5:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzo());
            default:
                List list2 = zzfy.a;
                return Integer.valueOf((int) zzags.zzy());
        }
    }
}
