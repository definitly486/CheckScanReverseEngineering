package defpackage;

import com.google.firebase.inappmessaging.internal.ProgramaticContextualTriggers;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class fl0 implements li0, xl3, ProgramaticContextualTriggers.Listener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ fl0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 1:
                return (aj4.a) ((bj4) obj2).invoke(obj);
            case 2:
                return (us5) ((t9) obj2).invoke(obj);
            default:
                return ((nz5) obj2).invoke(obj);
        }
    }

    @Override // com.google.firebase.inappmessaging.internal.ProgramaticContextualTriggers.Listener
    public void onEventTrigger(String str) {
        ((qg3) this.c).onNext(str);
    }

    @Override // defpackage.li0
    public Object apply(Object obj, Object obj2) {
        return ((bm0.b) this.c).invoke(obj, obj2);
    }
}
