package yads;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class xk2 {
    public final vk2 a;

    public xk2() {
        int iMaxMemory = ((int) (Runtime.getRuntime().maxMemory() / 1024)) / 8;
        this.a = new vk2(iMaxMemory > 10240 ? 10240 : iMaxMemory);
    }

    public final void a(String str, Drawable drawable, pd3 pd3Var) {
        this.a.put(str, new wk2(drawable, pd3Var));
    }

    public final wk2 a(String str) {
        return (wk2) this.a.get(str);
    }
}
