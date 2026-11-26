package defpackage;

import androidx.compose.material3.NavigationDrawerKt;
import androidx.compose.material3.SheetState;
import androidx.compose.ui.unit.Density;
import com.google.firebase.sessions.ProcessDataManagerImpl;
import com.google.firebase.sessions.UuidGenerator;
import java.util.LinkedHashMap;
import yads.gf0;
import yads.nq0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jj5 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jj5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(NavigationDrawerKt.Scrim_Bx497Mc$lambda$69$lambda$68$lambda$67((ll3) obj));
            case 1:
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                ta6 ta6Var = ((ua6) obj).b;
                linkedHashMap.put("$lib", ta6Var.y);
                linkedHashMap.put("$lib_version", ta6Var.z);
                return linkedHashMap;
            case 2:
                return ProcessDataManagerImpl.myUuid_delegate$lambda$1((UuidGenerator) obj);
            case 3:
                return Float.valueOf(SheetState.Companion.Saver$lambda$3((Density) obj));
            case 4:
                return gf0.m((gf0) obj);
            default:
                return nq0.U((nq0) obj);
        }
    }
}
