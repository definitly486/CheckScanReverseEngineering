package defpackage;

import androidx.camera.camera2.compat.quirk.AeFpsRangeLegacyQuirk;
import androidx.camera.camera2.pipe.CameraMetadata;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlinx.serialization.json.JsonDecodingException;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class eb implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ eb(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        String[] strArrNames;
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return AeFpsRangeLegacyQuirk.range_delegate$lambda$0((CameraMetadata) obj2, (AeFpsRangeLegacyQuirk) obj);
            default:
                mp7 mp7Var = (mp7) obj2;
                xb4 xb4Var = (xb4) obj;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                fc4 fc4Var = xb4Var.a;
                fd4.d(xb4Var, mp7Var);
                int iE = mp7Var.e();
                for (int i2 = 0; i2 < iE; i2++) {
                    List<Annotation> listG = mp7Var.g(i2);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj3 : listG) {
                        if (obj3 instanceof ed4) {
                            arrayList.add(obj3);
                        }
                    }
                    ed4 ed4Var = (ed4) (arrayList.size() == 1 ? arrayList.get(0) : null);
                    if (ed4Var != null && (strArrNames = ed4Var.names()) != null) {
                        for (String str : strArrNames) {
                            String str2 = aa4.e(mp7Var.getKind(), sp7.b.a) ? "enum value" : "property";
                            if (linkedHashMap.containsKey(str)) {
                                throw new JsonDecodingException(yc4.c(-1, "The suggested name '" + str + "' for " + str2 + ' ' + mp7Var.f(i2) + " is already one of the names for " + str2 + ' ' + mp7Var.f(((Number) n05.c(str, linkedHashMap)).intValue()) + " in " + mp7Var, null, null, null));
                            }
                            linkedHashMap.put(str, Integer.valueOf(i2));
                        }
                    }
                }
                return linkedHashMap.isEmpty() ? mx2.b : linkedHashMap;
        }
    }
}
