package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class oq0 implements LayoutInflater.Factory2 {
    public final pq0 a;

    public oq0(pq0 pq0Var) {
        this.a = pq0Var;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        if ("com.yandex.div.core.view2.Div2View".equals(str) || "Div2View".equals(str)) {
            return new vq0(this.a, attributeSet, 4);
        }
        return null;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return onCreateView(str, context, attributeSet);
    }
}
