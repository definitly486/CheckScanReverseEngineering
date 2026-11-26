package yads;

import androidx.media3.common.MimeTypes;

/* JADX INFO: loaded from: classes6.dex */
public final class va4 {
    public final c06 a;
    public final l06 b;
    public final k06 c;
    public final j26 d;
    public int e;

    public va4(c06 c06Var, l06 l06Var, k06 k06Var) {
        this.a = c06Var;
        this.b = l06Var;
        this.c = k06Var;
        this.d = MimeTypes.AUDIO_TRUEHD.equals(c06Var.f.m) ? new j26() : null;
    }
}
