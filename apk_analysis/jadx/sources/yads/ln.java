package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public class ln extends RecyclerView {
    public final nn a;

    public ln(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new nn(this);
    }

    @Override // android.view.View
    public final boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        return this.a.a(i, keyEvent) || super.onKeyPreIme(i, keyEvent);
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        this.a.a();
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        nn nnVar = this.a;
        if (z) {
            nnVar.a();
        } else {
            nnVar.getClass();
        }
    }

    public void setOnBackClickListener(mn mnVar) {
        setDescendantFocusability(mnVar != null ? 131072 : 262144);
        nn nnVar = this.a;
        nnVar.b = mnVar;
        nnVar.a();
    }
}
