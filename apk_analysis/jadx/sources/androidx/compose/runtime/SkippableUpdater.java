package androidx.compose.runtime;

import defpackage.aa4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class SkippableUpdater<T> {
    private final Composer composer;

    private /* synthetic */ SkippableUpdater(Composer composer) {
        this.composer = composer;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ SkippableUpdater m5329boximpl(Composer composer) {
        return new SkippableUpdater(composer);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static <T> Composer m5330constructorimpl(Composer composer) {
        return composer;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5331equalsimpl(Composer composer, Object obj) {
        return (obj instanceof SkippableUpdater) && aa4.e(composer, ((SkippableUpdater) obj).m5336unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5332equalsimpl0(Composer composer, Composer composer2) {
        return aa4.e(composer, composer2);
    }

    public static /* synthetic */ void getComposer$annotations() {
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5333hashCodeimpl(Composer composer) {
        return composer.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5334toStringimpl(Composer composer) {
        return "SkippableUpdater(composer=" + composer + ')';
    }

    /* JADX INFO: renamed from: update-impl, reason: not valid java name */
    public static final void m5335updateimpl(Composer composer, nl3<? super Updater<T>, j59> nl3Var) {
        composer.startReplaceableGroup(509942095);
        nl3Var.invoke(Updater.m5354boximpl(Updater.m5355constructorimpl(composer)));
        composer.endReplaceableGroup();
    }

    public boolean equals(Object obj) {
        return m5331equalsimpl(this.composer, obj);
    }

    public int hashCode() {
        return m5333hashCodeimpl(this.composer);
    }

    public String toString() {
        return m5334toStringimpl(this.composer);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Composer m5336unboximpl() {
        return this.composer;
    }
}
