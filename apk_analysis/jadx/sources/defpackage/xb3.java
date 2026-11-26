package defpackage;

import android.content.Context;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import yads.gf0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xb3 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Context c;

    public /* synthetic */ xb3(Context context, int i) {
        this.b = i;
        this.c = context;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Context context = this.c;
        switch (i) {
            case 0:
                return FirebaseSessionsComponent.MainModule.Companion.sessionDataStore$lambda$5(context);
            default:
                return gf0.b(context);
        }
    }
}
