package defpackage;

import com.google.gson.Gson;
import com.warefly.checkscan.data.network.deserializers.SSEDataDeserializer;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class ea7 extends gh4 implements bm3<ze7, i36, Gson> {
    public static final ea7 f = new ea7(2);

    @Override // defpackage.bm3
    public final Gson invoke(ze7 ze7Var, i36 i36Var) {
        ze7Var.getClass();
        i36Var.getClass();
        ws3 ws3Var = new ws3();
        SSEDataDeserializer sSEDataDeserializer = new SSEDataDeserializer();
        HashMap map = sSEDataDeserializer.b;
        map.put("UpdateBonuses", pa7.class);
        map.put("UpdateBalance", oa7.class);
        map.put("UpdateTransferShowcase", ta7.class);
        map.put("UpdateTasks", ra7.class);
        map.put("UpdateProfileIcon", qa7.class);
        map.put("UpdateTransferPoints", sa7.class);
        map.put("UpdateSignInState", w97.class);
        j59 j59Var = j59.a;
        ws3Var.c(y97.class, sSEDataDeserializer);
        return new Gson(ws3Var);
    }
}
