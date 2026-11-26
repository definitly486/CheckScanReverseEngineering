package defpackage;

import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ha8 implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ja8.a aVar = (ja8.a) obj;
        CharSequence charSequence = (CharSequence) obj2;
        yb9.e(aVar.a);
        if (!aVar.c) {
            aVar.a.append(aVar.b);
        }
        aVar.a.append((Object) charSequence);
        aVar.c = false;
    }
}
