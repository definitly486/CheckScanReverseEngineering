package androidx.compose.runtime;

import androidx.compose.runtime.Updater;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.dc;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class Updater<T> {
    private final Composer composer;

    private /* synthetic */ Updater(Composer composer) {
        this.composer = composer;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Updater m5354boximpl(Composer composer) {
        return new Updater(composer);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static <T> Composer m5355constructorimpl(Composer composer) {
        return composer;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5356equalsimpl(Composer composer, Object obj) {
        return (obj instanceof Updater) && aa4.e(composer, ((Updater) obj).m5367unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5357equalsimpl0(Composer composer, Composer composer2) {
        return aa4.e(composer, composer2);
    }

    public static /* synthetic */ void getComposer$annotations() {
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5358hashCodeimpl(Composer composer) {
        return composer.hashCode();
    }

    /* JADX INFO: renamed from: init-impl, reason: not valid java name */
    public static final void m5360initimpl(Composer composer, final nl3<? super T, j59> nl3Var) {
        if (composer.getInserting()) {
            composer.apply(j59.a, new bm3() { // from class: h89
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    return Updater.init_impl$lambda$0(nl3Var, obj, (j59) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 init_impl$lambda$0(nl3 nl3Var, Object obj, j59 j59Var) {
        nl3Var.invoke(obj);
        return j59.a;
    }

    /* JADX INFO: renamed from: reconcile-impl, reason: not valid java name */
    public static final void m5361reconcileimpl(Composer composer, final nl3<? super T, j59> nl3Var) {
        composer.apply(j59.a, new bm3() { // from class: i89
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return Updater.reconcile_impl$lambda$0(nl3Var, obj, (j59) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 reconcile_impl$lambda$0(nl3 nl3Var, Object obj, j59 j59Var) {
        nl3Var.invoke(obj);
        return j59.a;
    }

    @ul2
    /* JADX INFO: renamed from: set-impl, reason: not valid java name */
    public static final /* synthetic */ void m5362setimpl(Composer composer, int i, bm3<? super T, ? super Integer, j59> bm3Var) {
        if (composer.getInserting() || !aa4.e(composer.rememberedValue(), Integer.valueOf(i))) {
            dc.b(bm3Var, i, composer, i);
        }
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5364toStringimpl(Composer composer) {
        return "Updater(composer=" + composer + ')';
    }

    @ul2
    /* JADX INFO: renamed from: update-impl, reason: not valid java name */
    public static final /* synthetic */ void m5365updateimpl(Composer composer, int i, bm3<? super T, ? super Integer, j59> bm3Var) {
        boolean inserting = composer.getInserting();
        if (inserting || !aa4.e(composer.rememberedValue(), Integer.valueOf(i))) {
            composer.updateRememberedValue(Integer.valueOf(i));
            if (inserting) {
                return;
            }
            composer.apply(Integer.valueOf(i), bm3Var);
        }
    }

    public boolean equals(Object obj) {
        return m5356equalsimpl(this.composer, obj);
    }

    public int hashCode() {
        return m5358hashCodeimpl(this.composer);
    }

    public String toString() {
        return m5364toStringimpl(this.composer);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Composer m5367unboximpl() {
        return this.composer;
    }

    /* JADX INFO: renamed from: init-impl, reason: not valid java name */
    public static final <V> void m5359initimpl(Composer composer, V v, bm3<? super T, ? super V, j59> bm3Var) {
        if (composer.getInserting()) {
            composer.apply(v, bm3Var);
        }
    }

    /* JADX INFO: renamed from: set-impl, reason: not valid java name */
    public static final <V> void m5363setimpl(Composer composer, V v, bm3<? super T, ? super V, j59> bm3Var) {
        if (composer.getInserting() || !aa4.e(composer.rememberedValue(), v)) {
            composer.updateRememberedValue(v);
            composer.apply(v, bm3Var);
        }
    }

    /* JADX INFO: renamed from: update-impl, reason: not valid java name */
    public static final <V> void m5366updateimpl(Composer composer, V v, bm3<? super T, ? super V, j59> bm3Var) {
        boolean inserting = composer.getInserting();
        if (inserting || !aa4.e(composer.rememberedValue(), v)) {
            composer.updateRememberedValue(v);
            if (inserting) {
                return;
            }
            composer.apply(v, bm3Var);
        }
    }
}
