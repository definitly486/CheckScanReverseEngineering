package defpackage;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.search.SearchView;
import com.my.target.r0;
import com.my.target.wf;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pk7 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ ViewGroup c;

    public /* synthetic */ pk7(ViewGroup viewGroup, int i) {
        this.b = i;
        this.c = viewGroup;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        ViewGroup viewGroup = this.c;
        switch (i) {
            case 0:
                ((SearchView) viewGroup).lambda$setupWithSearchBar$8(view);
                break;
            default:
                int i2 = wf.z;
                r0.a aVar = ((wf) viewGroup).v;
                if (aVar != null) {
                    aVar.e();
                }
                break;
        }
    }
}
