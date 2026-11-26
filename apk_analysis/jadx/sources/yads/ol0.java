package yads;

import com.monetization.ads.exo.source.dash.DashMediaSource$Factory;
import defpackage.i29;
import java.util.HashMap;
import java.util.HashSet;
import yads.ol0;
import yads.pl0;

/* JADX INFO: loaded from: classes6.dex */
public final class ol0 {
    public final zk0 a;
    public final HashMap b = new HashMap();
    public final HashSet c = new HashSet();
    public final HashMap d = new HashMap();
    public vc0 e;
    public sk0 f;

    public ol0(zk0 zk0Var) {
        this.a = zk0Var;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007e  */
    public final ut5 a(int i) {
        ut5 ut5Var;
        ut5 ut5Var2;
        if (this.b.containsKey(Integer.valueOf(i))) {
            return (ut5) this.b.get(Integer.valueOf(i));
        }
        final vc0 vc0Var = this.e;
        vc0Var.getClass();
        try {
            if (i == 0) {
                final Class clsAsSubclass = DashMediaSource$Factory.class.asSubclass(g14.class);
                ut5Var2 = new ut5() { // from class: t4a
                    @Override // yads.ut5
                    public final Object get() {
                        return pl0.a(clsAsSubclass, vc0Var);
                    }
                };
            } else {
                if (i != 1) {
                    if (i == 2) {
                        final Class<? extends U> clsAsSubclass2 = Class.forName("com.monetization.ads.exo.source.hls.HlsMediaSource$Factory").asSubclass(g14.class);
                        ut5Var2 = new ut5() { // from class: r4a
                            @Override // yads.ut5
                            public final Object get() {
                                return pl0.a(clsAsSubclass2, vc0Var);
                            }
                        };
                    } else if (i != 3) {
                        ut5Var = i != 4 ? null : new ut5() { // from class: p4a
                            @Override // yads.ut5
                            public final Object get() {
                                return this.b.a(vc0Var);
                            }
                        };
                    } else {
                        final Class<? extends U> clsAsSubclass3 = Class.forName("com.monetization.ads.exo.source.rtsp.RtspMediaSource$Factory").asSubclass(g14.class);
                        ut5Var = new ut5() { // from class: q4a
                            @Override // yads.ut5
                            public final Object get() {
                                return ol0.a(clsAsSubclass3);
                            }
                        };
                    }
                    this.b.put(Integer.valueOf(i), ut5Var);
                    if (ut5Var != null) {
                        this.c.add(Integer.valueOf(i));
                    }
                    return ut5Var;
                }
                final Class<? extends U> clsAsSubclass4 = Class.forName("com.monetization.ads.exo.source.smoothstreaming.SsMediaSource$Factory").asSubclass(g14.class);
                ut5Var2 = new ut5() { // from class: s4a
                    @Override // yads.ut5
                    public final Object get() {
                        return pl0.a(clsAsSubclass4, vc0Var);
                    }
                };
            }
            ut5Var = ut5Var2;
        } catch (ClassNotFoundException unused) {
        }
        this.b.put(Integer.valueOf(i), ut5Var);
        if (ut5Var != null) {
            this.c.add(Integer.valueOf(i));
        }
        return ut5Var;
    }

    public final /* synthetic */ g14 a(vc0 vc0Var) {
        return new x15(vc0Var, this.a);
    }

    public static g14 a(Class cls) {
        try {
            return (g14) cls.getConstructor(null).newInstance(null);
        } catch (Exception e) {
            i29.a(e);
            return null;
        }
    }
}
