package defpackage;

import android.view.View;
import com.my.target.wf;
import com.my.target.wj;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class n61 implements xl3, wf.b {
    public final /* synthetic */ Object b;

    public /* synthetic */ n61(Object obj) {
        this.b = obj;
    }

    @Override // com.my.target.wf.b
    public void a(View view, pfa pfaVar) {
        hga hgaVar = (hga) this.b;
        int i = wj.k;
        hgaVar.onClick(view);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (List) ((q61) this.b).invoke(obj);
    }
}
