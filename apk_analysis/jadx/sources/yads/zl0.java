package yads;

import android.content.Context;
import android.os.Handler;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class zl0 {
    public final Context a;
    public boolean d;
    public final nl0 b = new nl0();
    public int c = 0;
    public final bz3 e = bz3.a;

    public zl0(Context context) {
        this.a = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Class[], java.lang.Object[], yads.gs[]] */
    public final gs[] a(Handler handler, bq2 bq2Var, bq2 bq2Var2, bq2 bq2Var3, bq2 bq2Var4) {
        gs[] gsVarArr;
        int i;
        int i2;
        Class cls;
        int i3;
        int i4;
        Class cls2 = Integer.TYPE;
        Class cls3 = Long.TYPE;
        ArrayList arrayList = new ArrayList();
        Context context = this.a;
        int i5 = this.c;
        arrayList.add(new oz3(context, this.b, this.e, this.d, handler, bq2Var));
        if (i5 == 0) {
            gsVarArr = null;
        } else {
            int size = arrayList.size();
            if (i5 == 2) {
                size--;
            }
            try {
                gsVarArr = null;
                try {
                    try {
                        i = size + 1;
                        try {
                            arrayList.add(size, (gs) Class.forName("com.monetization.ads.exo.ext.vp9.LibvpxVideoRenderer").getConstructor(cls3, Handler.class, oe6.class, cls2).newInstance(5000L, handler, bq2Var, 50));
                            sv3.c("DefaultRenderersFactory", "Loaded LibvpxVideoRenderer.");
                        } catch (ClassNotFoundException unused) {
                            size = i;
                            i = size;
                        }
                    } catch (Exception e) {
                        e = e;
                        defpackage.mg.e("Error instantiating VP9 extension", e);
                        return gsVarArr;
                    }
                } catch (ClassNotFoundException unused2) {
                }
            } catch (ClassNotFoundException unused3) {
                gsVarArr = null;
            } catch (Exception e2) {
                e = e2;
                gsVarArr = null;
            }
            try {
                arrayList.add(i, (gs) Class.forName("com.monetization.ads.exo.ext.av1.Libgav1VideoRenderer").getConstructor(cls3, Handler.class, oe6.class, cls2).newInstance(5000L, handler, bq2Var, 50));
                sv3.c("DefaultRenderersFactory", "Loaded Libgav1VideoRenderer.");
            } catch (ClassNotFoundException unused4) {
            } catch (Exception e3) {
                defpackage.mg.e("Error instantiating AV1 extension", e3);
                return gsVarArr;
            }
        }
        Context context2 = this.a;
        mj0 mj0Var = new mj0();
        fm fmVarA = fm.a(context2);
        fmVarA.getClass();
        mj0Var.a = fmVarA;
        if (mj0Var.b == null) {
            mj0Var.b = new oj0(new mm[0]);
        }
        vj0 vj0Var = new vj0(mj0Var);
        Context context3 = this.a;
        int i6 = this.c;
        ?? r10 = gsVarArr;
        arrayList.add(new sy3(context3, this.b, this.e, this.d, handler, bq2Var2, vj0Var));
        if (i6 != 0) {
            int size2 = arrayList.size();
            if (i6 == 2) {
                size2--;
            }
            try {
                try {
                    i2 = size2 + 1;
                    try {
                        arrayList.add(size2, (gs) Class.forName("com.monetization.ads.exo.decoder.midi.MidiRenderer").getConstructor(r10).newInstance(r10));
                        sv3.c("DefaultRenderersFactory", "Loaded MidiRenderer.");
                    } catch (ClassNotFoundException unused5) {
                        size2 = i2;
                        i2 = size2;
                    }
                } catch (ClassNotFoundException unused6) {
                }
                try {
                    try {
                        cls = tm.class;
                        try {
                            i3 = i2 + 1;
                            try {
                                arrayList.add(i2, (gs) Class.forName("com.monetization.ads.exo.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, om.class, cls).newInstance(handler, bq2Var2, vj0Var));
                                sv3.c("DefaultRenderersFactory", "Loaded LibopusAudioRenderer.");
                            } catch (ClassNotFoundException unused7) {
                                i2 = i3;
                                i3 = i2;
                            }
                        } catch (ClassNotFoundException unused8) {
                        }
                    } catch (ClassNotFoundException unused9) {
                        cls = tm.class;
                    }
                    try {
                        try {
                            i4 = i3 + 1;
                            try {
                                arrayList.add(i3, (gs) Class.forName("com.monetization.ads.exo.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, om.class, cls).newInstance(handler, bq2Var2, vj0Var));
                                sv3.c("DefaultRenderersFactory", "Loaded LibflacAudioRenderer.");
                            } catch (ClassNotFoundException unused10) {
                                i3 = i4;
                                i4 = i3;
                            }
                        } catch (Exception e4) {
                            defpackage.mg.e("Error instantiating FLAC extension", e4);
                            return r10;
                        }
                    } catch (ClassNotFoundException unused11) {
                    }
                    try {
                        arrayList.add(i4, (gs) Class.forName("com.monetization.ads.exo.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, om.class, cls).newInstance(handler, bq2Var2, vj0Var));
                        sv3.c("DefaultRenderersFactory", "Loaded FfmpegAudioRenderer.");
                    } catch (ClassNotFoundException unused12) {
                    } catch (Exception e5) {
                        defpackage.mg.e("Error instantiating FFmpeg extension", e5);
                        return r10;
                    }
                } catch (Exception e6) {
                    defpackage.mg.e("Error instantiating Opus extension", e6);
                    return r10;
                }
            } catch (Exception e7) {
                defpackage.mg.e("Error instantiating MIDI extension", e7);
                return r10;
            }
        }
        arrayList.add(new hw5(bq2Var3, handler.getLooper()));
        arrayList.add(new k84(bq2Var4, handler.getLooper()));
        arrayList.add(new xx());
        return (gs[]) arrayList.toArray(new gs[0]);
    }
}
