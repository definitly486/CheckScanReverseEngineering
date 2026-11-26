package androidx.compose.ui.text.font;

import androidx.compose.runtime.State;
import androidx.media3.common.C;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.n1;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FontFamily {
    public static final int $stable = 0;
    private final boolean canLoadSynchronously;
    public static final Companion Companion = new Companion(null);
    private static final SystemFontFamily Default = new DefaultFontFamily();
    private static final GenericFontFamily SansSerif = new GenericFontFamily(C.SANS_SERIF_NAME, "FontFamily.SansSerif");
    private static final GenericFontFamily Serif = new GenericFontFamily(C.SERIF_NAME, "FontFamily.Serif");
    private static final GenericFontFamily Monospace = new GenericFontFamily("monospace", "FontFamily.Monospace");
    private static final GenericFontFamily Cursive = new GenericFontFamily("cursive", "FontFamily.Cursive");

    public interface Resolver {
        /* JADX INFO: renamed from: resolve-DPcqOEQ$default, reason: not valid java name */
        static /* synthetic */ State m8575resolveDPcqOEQ$default(Resolver resolver, FontFamily fontFamily, FontWeight fontWeight, int i, int i2, int i3, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: resolve-DPcqOEQ");
                return null;
            }
            if ((i3 & 1) != 0) {
                fontFamily = null;
            }
            if ((i3 & 2) != 0) {
                fontWeight = FontWeight.Companion.getNormal();
            }
            if ((i3 & 4) != 0) {
                i = FontStyle.Companion.m8610getNormal_LCdwA();
            }
            if ((i3 & 8) != 0) {
                i2 = FontSynthesis.Companion.m8620getAllGVVA2EU();
            }
            return resolver.mo8576resolveDPcqOEQ(fontFamily, fontWeight, i, i2);
        }

        Object preload(FontFamily fontFamily, e02<? super j59> e02Var);

        /* JADX INFO: renamed from: resolve-DPcqOEQ, reason: not valid java name */
        State<Object> mo8576resolveDPcqOEQ(FontFamily fontFamily, FontWeight fontWeight, int i, int i2);
    }

    private FontFamily(boolean z) {
        this.canLoadSynchronously = z;
    }

    public static /* synthetic */ void getCanLoadSynchronously$annotations() {
    }

    @ul2
    public final boolean getCanLoadSynchronously() {
        return this.canLoadSynchronously;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final GenericFontFamily getCursive() {
            return FontFamily.Cursive;
        }

        public final SystemFontFamily getDefault() {
            return FontFamily.Default;
        }

        public final GenericFontFamily getMonospace() {
            return FontFamily.Monospace;
        }

        public final GenericFontFamily getSansSerif() {
            return FontFamily.SansSerif;
        }

        public final GenericFontFamily getSerif() {
            return FontFamily.Serif;
        }

        private Companion() {
        }
    }

    public /* synthetic */ FontFamily(boolean z, jh2 jh2Var) {
        this(z);
    }
}
