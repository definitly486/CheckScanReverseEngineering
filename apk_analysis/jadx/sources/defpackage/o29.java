package defpackage;

import defpackage.o29;

/* JADX INFO: loaded from: classes3.dex */
public abstract class o29<CHILD extends o29<CHILD, TranscodeType>, TranscodeType> implements Cloneable {
    public l29<? super TranscodeType> b = yn5.c;

    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final CHILD clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e) {
            ti0.f(e);
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof o29) {
            return this.b.equals(((o29) obj).b);
        }
        return false;
    }

    public int hashCode() {
        return this.b.hashCode();
    }
}
