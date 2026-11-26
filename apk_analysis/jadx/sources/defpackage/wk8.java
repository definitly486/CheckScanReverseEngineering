package defpackage;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes3.dex */
public interface wk8<R> extends up4 {
    c37 getRequest();

    void getSize(v18 v18Var);

    void onLoadCleared(Drawable drawable);

    void onLoadFailed(Drawable drawable);

    void onLoadStarted(Drawable drawable);

    void onResourceReady(R r, k29<? super R> k29Var);

    void removeCallback(v18 v18Var);

    void setRequest(c37 c37Var);
}
