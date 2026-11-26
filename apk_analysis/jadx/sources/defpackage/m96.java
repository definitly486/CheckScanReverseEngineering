package defpackage;

import com.google.android.gms.internal.auth.zzef;
import java.io.Closeable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes5.dex */
public final class m96 {
    public static final mp7[] a = new mp7[0];

    public static final Set a(mp7 mp7Var) {
        mp7Var.getClass();
        if (mp7Var instanceof ay0) {
            return ((ay0) mp7Var).a();
        }
        HashSet hashSet = new HashSet(mp7Var.e());
        int iE = mp7Var.e();
        for (int i = 0; i < iE; i++) {
            hashSet.add(mp7Var.f(i));
        }
        return hashSet;
    }

    public static void b(int i, Object[] objArr) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                o2.d(jh.b(i2, "at index "));
                return;
            }
        }
    }

    public static final void c(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                sj0.c(th, th2);
            }
        }
    }

    public static final mp7[] d(List list) {
        mp7[] mp7VarArr;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            list = null;
        }
        return (list == null || (mp7VarArr = (mp7[]) list.toArray(new mp7[0])) == null) ? a : mp7VarArr;
    }

    public static final ne4 e(ef4 ef4Var) {
        ef4Var.getClass();
        ne4 ne4VarD = ef4Var.d();
        if (ne4VarD instanceof ne4) {
            return ne4VarD;
        }
        r01.e(ne4VarD, "Only KClass supported as classifier, got ");
        return null;
    }

    public static final void f(c31 c31Var, e02 e02Var, boolean z) {
        Object objT = c31Var.t();
        Throwable thE = c31Var.e(objT);
        Object aVar = thE != null ? new k57.a(thE) : c31Var.f(objT);
        if (!z) {
            e02Var.resumeWith(aVar);
            return;
        }
        e02Var.getClass();
        fo2 fo2Var = (fo2) e02Var;
        e02<T> e02Var2 = fo2Var.f;
        Object obj = fo2Var.h;
        o22 context = e02Var2.getContext();
        Object objC = lt8.c(context, obj);
        h59<?> h59VarC = objC != lt8.a ? q22.c(e02Var2, context, objC) : null;
        try {
            e02Var2.resumeWith(aVar);
            j59 j59Var = j59.a;
        } finally {
            if (h59VarC == null || h59VarC.o0()) {
                lt8.a(context, objC);
            }
        }
    }

    public static final void g(ne4 ne4Var) {
        ne4Var.getClass();
        String strF = ne4Var.f();
        if (strF == null) {
            strF = "<local class name not available>";
        }
        throw new SerializationException(me0.c("Serializer for class '", strF, "' is not found.\nPlease ensure that class is marked as '@Serializable' and that the serialization compiler plugin is applied.\n"));
    }

    public static String h(zzef zzefVar) {
        StringBuilder sb = new StringBuilder(zzefVar.zzd());
        for (int i = 0; i < zzefVar.zzd(); i++) {
            byte bZza = zzefVar.zza(i);
            if (bZza == 34) {
                sb.append("\\\"");
            } else if (bZza == 39) {
                sb.append("\\'");
            } else if (bZza != 92) {
                switch (bZza) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bZza < 32 || bZza > 126) {
                            sb.append('\\');
                            sb.append((char) (((bZza >>> 6) & 3) + 48));
                            sb.append((char) (((bZza >>> 3) & 7) + 48));
                            sb.append((char) ((bZza & 7) + 48));
                        } else {
                            sb.append((char) bZza);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
