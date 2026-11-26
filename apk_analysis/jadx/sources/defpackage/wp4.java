package defpackage;

import android.content.Context;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class wp4 {
    public final HashMap a = new HashMap();

    public class a implements up4 {
        public final /* synthetic */ Lifecycle b;

        public a(Lifecycle lifecycle) {
            this.b = lifecycle;
        }

        @Override // defpackage.up4
        public final void onDestroy() {
            wp4.this.a.remove(this.b);
        }

        @Override // defpackage.up4
        public final void onStart() {
        }

        @Override // defpackage.up4
        public final void onStop() {
        }
    }

    public final class b implements r37 {
    }

    public wp4(q37.b bVar) {
    }

    public final p37 a(Context context, com.bumptech.glide.a aVar, Lifecycle lifecycle, FragmentManager fragmentManager, boolean z) {
        eb9.a();
        eb9.a();
        HashMap map = this.a;
        p37 p37Var = (p37) map.get(lifecycle);
        if (p37Var != null) {
            return p37Var;
        }
        tp4 tp4Var = new tp4(lifecycle);
        p37 p37Var2 = new p37(aVar, tp4Var, new b(), context);
        map.put(lifecycle, p37Var2);
        tp4Var.a(new a(lifecycle));
        if (z) {
            p37Var2.onStart();
        }
        return p37Var2;
    }
}
