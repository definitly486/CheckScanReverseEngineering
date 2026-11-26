package defpackage;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlinx.serialization.SerializationException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class l1 implements rn2, RemoteCall, rxa {
    public static final /* synthetic */ l1 b = new l1();
    public static final /* synthetic */ l1 c = new l1();

    public static xea c(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject(str2);
        String string = jSONObject.getString("name");
        string.getClass();
        JSONObject jSONObject2 = jSONObject.getJSONObject("data");
        jSONObject2.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator<String> itKeys = jSONObject2.keys();
        itKeys.getClass();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            arrayList.add(new b36(next, jSONObject2.get(next).toString()));
        }
        return new xea(str, string, n05.k(arrayList));
    }

    public static ir7 d(ir7 ir7Var) {
        ir7Var.b.b();
        return ir7Var.size() > 0 ? ir7Var : ir7.c;
    }

    public static final String e(a57 a57Var) {
        String strPrevious;
        List<String> listH = a57Var.a.g.h("Set-Cookie");
        ListIterator<String> listIterator = listH.listIterator(listH.size());
        while (listIterator.hasPrevious()) {
            strPrevious = listIterator.previous();
            String strSubstring = strPrevious;
            if (aa4.e(ta8.f0(ta8.c0(strSubstring, '=')).toString(), "remember-me")) {
                int iJ = ta8.J('=', 0, 6, strSubstring);
                if (iJ != -1) {
                    strSubstring = strSubstring.substring(iJ + 1, strSubstring.length());
                }
                if (!ta8.M(ta8.c0(strSubstring, ';'))) {
                    return strPrevious;
                }
            }
        }
        strPrevious = null;
        return strPrevious;
    }

    public static Set f(Object obj) {
        Set setSingleton = Collections.singleton(obj);
        setSingleton.getClass();
        return setSingleton;
    }

    public static final void g(ne4 ne4Var, String str) {
        String string;
        ne4Var.getClass();
        String str2 = "in the polymorphic scope of '" + ne4Var.f() + '\'';
        if (str == null) {
            string = lt0.d('.', "Class discriminator was missing and no default serializers were registered ", str2);
        } else {
            StringBuilder sbD = ad2.d("Serializer for subclass '", str, "' is not found ", str2, ".\nCheck if class with serial name '");
            kv2.c(sbD, str, "' exists and serializer is registered in a corresponding SerializersModule.\nTo be registered automatically, class '", str, "' has to be '@Serializable', and the base class '");
            sbD.append(ne4Var.f());
            sbD.append("' has to be sealed and '@Serializable'.");
            string = sbD.toString();
        }
        throw new SerializationException(string);
    }

    public static String h(zzdf zzdfVar) {
        StringBuilder sb = new StringBuilder(zzdfVar.zzd());
        for (int i = 0; i < zzdfVar.zzd(); i++) {
            byte bZza = zzdfVar.zza(i);
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

    @Override // defpackage.rn2
    public void a(kf4 kf4Var, q82 q82Var) {
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        ((zzec) obj).zzz((TaskCompletionSource) obj2);
    }

    @Override // defpackage.rn2
    public File b(kf4 kf4Var) {
        return null;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Boolean.valueOf(zzags.zzc());
    }
}
