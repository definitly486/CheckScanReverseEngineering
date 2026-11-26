package com.my.target;

import android.view.View;
import android.widget.LinearLayout;
import defpackage.pfa;
import defpackage.xda;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface z0 {

    public interface a {
        void a();

        void c(int i, pfa pfaVar);

        void d();

        void e();

        void p();
    }

    View a();

    void b();

    void c();

    void d();

    View getCloseButton();

    LinearLayout getTopBar();

    void setBanner(xda xdaVar);

    void setDoubleBanners(List list);

    void setRemainingAllowCloseDelay(int i);
}
