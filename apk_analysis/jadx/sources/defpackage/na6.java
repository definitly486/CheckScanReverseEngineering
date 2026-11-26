package defpackage;

import com.posthog.internal.replay.PostHogSessionReplayHandler;
import yads.bp2;
import yads.ko2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class na6 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ na6(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ta6 ta6Var = (ta6) obj;
                try {
                    PostHogSessionReplayHandler postHogSessionReplayHandler = ((oa6) obj2).y;
                    if (postHogSessionReplayHandler != null) {
                        postHogSessionReplayHandler.onSessionIdChanged();
                    }
                    break;
                } catch (Throwable th) {
                    sg.f("onSessionIdChanged listener failed: ", th, '.', ta6Var.v);
                }
                return j59.a;
            default:
                return bp2.a((bp2) obj2, (ko2) obj);
        }
    }
}
