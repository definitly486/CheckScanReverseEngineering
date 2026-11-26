package defpackage;

import com.google.firebase.sessions.SessionData;
import java.util.UUID;
import yads.ee0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class re0 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ re0(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return UUID.randomUUID();
            case 1:
                return j59.a;
            case 2:
                return j59.a;
            case 3:
                return SessionData._childSerializers$_anonymous_();
            default:
                return ee0.a();
        }
    }
}
