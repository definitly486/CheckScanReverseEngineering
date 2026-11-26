package io.appmetrica.analytics.impl;

import android.util.Pair;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1087m0 {
    public Sc a;
    public long b;
    public boolean c;
    public final Kl d;

    public C1087m0(String str, long j, Kl kl) {
        this.b = j;
        try {
            this.a = new Sc(str);
        } catch (Throwable unused) {
            this.a = new Sc();
        }
        this.d = kl;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0047 A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0029, B:9:0x0031, B:14:0x003a, B:18:0x0047, B:16:0x0041, B:19:0x004b), top: B:24:0x0001 }] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final synchronized void a(Pair pair) {
        boolean zA;
        try {
            Kl kl = this.d;
            Sc sc = this.a;
            String str = (String) pair.first;
            String str2 = (String) pair.second;
            if (sc != null) {
                String strTrim = kl.a.getKeyTrimmer().trim(str);
                String strTrim2 = kl.a.getValueTrimmer().trim(str2);
                if (sc.containsKey(strTrim)) {
                    String str3 = (String) sc.get(strTrim);
                    if (strTrim2 != null) {
                        if (!strTrim2.equals(str3)) {
                        }
                    }
                    zA = kl.a(sc, strTrim, strTrim2);
                    if (zA) {
                        this.c = true;
                    }
                } else if (strTrim2 != null) {
                    zA = kl.a(sc, strTrim, strTrim2);
                    if (zA) {
                        this.c = true;
                    }
                }
            } else {
                kl.getClass();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized String toString() {
        return "Map size " + this.a.size() + ". Is changed " + this.c + ". Current revision " + this.b;
    }

    public final synchronized C1061l0 a() {
        try {
            if (this.c) {
                this.b++;
                this.c = false;
            }
        } catch (Throwable th) {
            throw th;
        }
        return new C1061l0(AbstractC1305ub.b(this.a), this.b);
    }
}
