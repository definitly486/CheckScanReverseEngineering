package defpackage;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.search.SearchView;
import com.my.target.wf;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nk7 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ ViewGroup c;

    public /* synthetic */ nk7(ViewGroup viewGroup, int i) {
        this.b = i;
        this.c = viewGroup;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        ViewGroup viewGroup = this.c;
        switch (i) {
            case 0:
                ((SearchView) viewGroup).lambda$setUpClearButton$3(view);
                break;
            default:
                int i2 = wf.z;
                ((wf) viewGroup).c.a(view, new gia());
                break;
        }
    }
}
