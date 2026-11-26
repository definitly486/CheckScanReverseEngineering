package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.Task;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.serialization.json.JsonEncodingException;

/* JADX INFO: loaded from: classes5.dex */
public final class yc4 implements rxa {
    public static final /* synthetic */ yc4 b = new yc4();

    public static final JsonEncodingException a(mp7 mp7Var) {
        String str = "Value of type '" + mp7Var.h() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + mp7Var.getKind() + '\'';
        mp7Var.h();
        return new JsonEncodingException(str, "Use 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
    }

    public static final Object b(Task task, e02 e02Var) throws Exception {
        if (!task.isComplete()) {
            c31 c31Var = new c31(1, zya.b(e02Var));
            c31Var.u();
            task.addOnCompleteListener(in2.b, new fz4(c31Var));
            Object objS = c31Var.s();
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            return objS;
        }
        Exception exception = task.getException();
        if (exception != null) {
            throw exception;
        }
        if (!task.isCanceled()) {
            return task.getResult();
        }
        throw new CancellationException("Task " + task + " was cancelled normally.");
    }

    public static final String c(int i, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        if (i >= 0) {
            sb.append("Unexpected JSON token at offset " + i + ": ");
        }
        sb.append(str);
        if (str2 != null && !ta8.M(str2)) {
            sb.append(" at path: ");
            sb.append(str2);
        }
        if (str3 != null && !ta8.M(str3)) {
            sb.append("\n".concat(str3));
        }
        if (str4 != null) {
            sb.append("\nJSON input: ");
            sb.append(str4);
        }
        return sb.toString();
    }

    public static final void d(w98 w98Var, String str) {
        w98Var.getClass();
        w98Var.k(w98Var.b - 1, "Trailing comma before the end of JSON ".concat(str), "Trailing commas are non-complaint JSON and not allowed by default. Use 'allowTrailingComma = true' in 'Json {}' builder to support them.");
        throw null;
    }

    public static final CharSequence e(int i, CharSequence charSequence) {
        charSequence.getClass();
        if (charSequence.length() >= 200) {
            if (i != -1) {
                int i2 = i - 30;
                int i3 = i + 30;
                String str = i2 <= 0 ? "" : ".....";
                String str2 = i3 >= charSequence.length() ? "" : ".....";
                StringBuilder sb = new StringBuilder(str);
                if (i2 < 0) {
                    i2 = 0;
                }
                int length = charSequence.length();
                if (i3 > length) {
                    i3 = length;
                }
                sb.append(charSequence.subSequence(i2, i3).toString());
                sb.append(str2);
                return sb.toString();
            }
            int length2 = charSequence.length() - 60;
            if (length2 > 0) {
                return "....." + charSequence.subSequence(length2, charSequence.length()).toString();
            }
        }
        return charSequence;
    }

    public static final String f(String str, Number number) {
        StringBuilder sb = new StringBuilder("Unexpected special floating-point value ");
        sb.append(number);
        return me0.d(sb, str != null ? me0.c(" with key ", str, ". ") : ". ", "By default, non-finite floating point values are prohibited because they do not conform JSON specification.");
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Long.valueOf(zzags.zzf());
    }
}
