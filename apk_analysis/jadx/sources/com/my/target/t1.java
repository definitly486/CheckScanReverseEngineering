package com.my.target;

import android.content.Context;
import android.view.View;
import defpackage.ao9;
import defpackage.cha;

/* JADX INFO: loaded from: classes4.dex */
public interface t1 {

    public interface a {
        void a(boolean z);

        void b(ao9 ao9Var);

        void e(ao9 ao9Var);

        void g(ao9 ao9Var, String str, int i, cha chaVar, Context context);

        void n(double d);

        void o(ao9 ao9Var, View view);
    }

    void destroy();

    View getCloseButton();

    View i();

    void pause();

    void resume();

    void stop();
}
