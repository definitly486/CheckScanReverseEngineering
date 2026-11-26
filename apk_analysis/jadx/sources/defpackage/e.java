package defpackage;

import android.content.ComponentCallbacks;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.location.zzu;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class e implements pv8, ft9, RemoteCall, rxa {
    public static final /* synthetic */ e b = new e();
    public static final /* synthetic */ e c = new e();

    public static final l03 c(String str, Enum[] enumArr, String[] strArr, Annotation[][] annotationArr) {
        enumArr.getClass();
        f03 f03Var = new f03(str, enumArr.length);
        int length = enumArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            Enum r5 = enumArr[i];
            int i3 = i2 + 1;
            String strName = (String) yr.O(i2, strArr);
            if (strName == null) {
                strName = r5.name();
            }
            f03Var.j(strName, false);
            Annotation[] annotationArr2 = (Annotation[]) yr.O(i2, annotationArr);
            if (annotationArr2 != null) {
                for (Annotation annotation : annotationArr2) {
                    annotation.getClass();
                    int i4 = f03Var.d;
                    List<Annotation>[] listArr = f03Var.f;
                    List<Annotation> arrayList = listArr[i4];
                    if (arrayList == null) {
                        arrayList = new ArrayList<>(1);
                        listArr[f03Var.d] = arrayList;
                    }
                    arrayList.add(annotation);
                }
            }
            i++;
            i2 = i3;
        }
        l03 l03Var = new l03(str, enumArr);
        l03Var.b = f03Var;
        return l03Var;
    }

    public static final int d(char c2) {
        if ('0' <= c2 && c2 < ':') {
            return c2 - '0';
        }
        if ('a' <= c2 && c2 < 'g') {
            return c2 - 'W';
        }
        if ('A' <= c2 && c2 < 'G') {
            return c2 - '7';
        }
        d.c(c2, "Unexpected hex digit: ");
        return 0;
    }

    public static final ze7 e(ComponentCallbacks componentCallbacks) {
        componentCallbacks.getClass();
        if (componentCallbacks instanceof sj) {
            return ((sj) componentCallbacks).getScope();
        }
        if (componentCallbacks instanceof og4) {
            return ((og4) componentCallbacks).getScope();
        }
        if (componentCallbacks instanceof jg4) {
            return ((jg4) componentCallbacks).b().c.d;
        }
        hg4 hg4Var = c.d;
        if (hg4Var != null) {
            return hg4Var.c.d;
        }
        ah.f("KoinApplication has not been started");
        return null;
    }

    @Override // defpackage.ft9
    public SQLiteDatabase a() {
        return null;
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        ((zzu) ((zzec) obj).getService()).zzE(new l5b((TaskCompletionSource) obj2));
    }

    @Override // defpackage.pv8
    public long b() {
        return TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return zzags.zzad();
    }
}
