package defpackage;

import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.compose.material.ripple.RippleIndicationInstance;
import androidx.compose.runtime.State;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ez0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ez0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Camera2CameraMetadata._keys$lambda$0((Camera2CameraMetadata) obj);
            case 1:
                ta6 ta6Var = (ta6) obj;
                Set<Integer> set = jz2.a;
                co5 co5Var = ta6Var.n;
                ob6 ob6Var = ta6Var.x;
                Map<String, Object> mapC = ob6Var != null ? ob6Var.c() : null;
                mx2 mx2Var = mx2.b;
                if (mapC == null) {
                    mapC = mx2Var;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                co5Var.getClass();
                linkedHashMap.putAll(mx2Var);
                Object obj2 = mapC.get("$os_name");
                String str = obj2 instanceof String ? (String) obj2 : null;
                if (str != null) {
                    linkedHashMap.put("os.name", str);
                }
                Object obj3 = mapC.get("$os_version");
                String str2 = obj3 instanceof String ? (String) obj3 : null;
                if (str2 != null) {
                    linkedHashMap.put("os.version", str2);
                }
                Object obj4 = mapC.get("$app_namespace");
                String str3 = obj4 instanceof String ? (String) obj4 : null;
                if (str3 == null) {
                    str3 = "unknown_service";
                }
                linkedHashMap.put("service.name", str3);
                Object obj5 = mapC.get("$app_version");
                String str4 = obj5 instanceof String ? (String) obj5 : null;
                if (str4 != null) {
                    linkedHashMap.put("service.version", str4);
                }
                return linkedHashMap;
            case 2:
                OkHttpClient.a aVarE = ((db6) obj).c.e();
                aVarE.f = false;
                return new OkHttpClient(aVarE);
            default:
                return RippleIndicationInstance.stateLayer$lambda$0((State) obj);
        }
    }
}
