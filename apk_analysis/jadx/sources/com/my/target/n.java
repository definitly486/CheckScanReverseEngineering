package com.my.target;

import android.content.Context;
import android.net.Uri;

/* JADX INFO: loaded from: classes4.dex */
public interface n {

    public interface a {
        void a(float f);

        void b(String str);

        void c();

        void d(float f, float f2);

        void f();

        void g();

        void h();

        void j();

        void k();

        void o();

        void s();
    }

    void a();

    void a(a aVar);

    void b(f0 f0Var);

    boolean b();

    void c(Context context, Uri uri);

    boolean c();

    void d();

    void destroy();

    void e();

    void f();

    boolean g();

    float getDuration();

    long getPosition();

    float getVolume();

    boolean isPlaying();

    void pause();

    void resume();

    void setVolume(float f);

    void stop();
}
