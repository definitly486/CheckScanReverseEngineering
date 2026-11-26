package androidx.compose.ui.text.font;

import androidx.appcompat.app.AppCompatDelegate;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.qz0;
import defpackage.r57;
import defpackage.y22;
import defpackage.yv8;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1", f = "FontListFontFamilyTypefaceAdapter.kt", l = {AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY}, m = "invokeSuspend", v = 1)
public final class FontListFontFamilyTypefaceAdapter$preload$3$2$1 extends pg8 implements bm3<y22, e02<? super Object>, Object> {
    final /* synthetic */ Font $font;
    final /* synthetic */ PlatformFontLoader $resourceLoader;
    int label;
    final /* synthetic */ FontListFontFamilyTypefaceAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FontListFontFamilyTypefaceAdapter$preload$3$2$1(FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter, Font font, PlatformFontLoader platformFontLoader, e02<? super FontListFontFamilyTypefaceAdapter$preload$3$2$1> e02Var) {
        super(2, e02Var);
        this.this$0 = fontListFontFamilyTypefaceAdapter;
        this.$font = font;
        this.$resourceLoader = platformFontLoader;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new FontListFontFamilyTypefaceAdapter$preload$3$2$1(this.this$0, this.$font, this.$resourceLoader, e02Var);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(y22 y22Var, e02<Object> e02Var) {
        return ((FontListFontFamilyTypefaceAdapter$preload$3$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        AsyncTypefaceCache asyncTypefaceCache = this.this$0.asyncTypefaceCache;
        Font font = this.$font;
        PlatformFontLoader platformFontLoader = this.$resourceLoader;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(font, platformFontLoader, null);
        this.label = 1;
        Object objRunCached = asyncTypefaceCache.runCached(font, platformFontLoader, true, anonymousClass1, this);
        return objRunCached == a32Var ? a32Var : objRunCached;
    }

    /* JADX INFO: renamed from: androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1$1, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1$1", f = "FontListFontFamilyTypefaceAdapter.kt", l = {111}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements nl3<e02<? super Object>, Object> {
        final /* synthetic */ Font $font;
        final /* synthetic */ PlatformFontLoader $resourceLoader;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Font font, PlatformFontLoader platformFontLoader, e02<? super AnonymousClass1> e02Var) {
            super(1, e02Var);
            this.$font = font;
            this.$resourceLoader = platformFontLoader;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new AnonymousClass1(this.$font, this.$resourceLoader, e02Var);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(e02<Object> e02Var) {
            return ((AnonymousClass1) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    C00841 c00841 = new C00841(this.$resourceLoader, this.$font, null);
                    this.label = 1;
                    obj = yv8.b(15000L, c00841, this);
                    if (obj == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                if (obj != null) {
                    return obj;
                }
                qz0.g(this.$font, "Unable to load font ");
                return null;
            } catch (Exception e) {
                throw new IllegalStateException("Unable to load font " + this.$font, e);
            }
        }

        /* JADX INFO: renamed from: androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1$1$1", f = "FontListFontFamilyTypefaceAdapter.kt", l = {112}, m = "invokeSuspend", v = 1)
        public static final class C00841 extends pg8 implements bm3<y22, e02<? super Object>, Object> {
            final /* synthetic */ Font $font;
            final /* synthetic */ PlatformFontLoader $resourceLoader;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00841(PlatformFontLoader platformFontLoader, Font font, e02<? super C00841> e02Var) {
                super(2, e02Var);
                this.$resourceLoader = platformFontLoader;
                this.$font = font;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new C00841(this.$resourceLoader, this.$font, e02Var);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(y22 y22Var, e02<Object> e02Var) {
                return ((C00841) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i != 0) {
                    if (i == 1) {
                        r57.b(obj);
                        return obj;
                    }
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                PlatformFontLoader platformFontLoader = this.$resourceLoader;
                Font font = this.$font;
                this.label = 1;
                Object objAwaitLoad = platformFontLoader.awaitLoad(font, this);
                return objAwaitLoad == a32Var ? a32Var : objAwaitLoad;
            }

            @Override // defpackage.bm3
            public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, e02<? super Object> e02Var) {
                return invoke2(y22Var, (e02<Object>) e02Var);
            }
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Object invoke(e02<? super Object> e02Var) {
            return invoke2((e02<Object>) e02Var);
        }
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, e02<? super Object> e02Var) {
        return invoke2(y22Var, (e02<Object>) e02Var);
    }
}
