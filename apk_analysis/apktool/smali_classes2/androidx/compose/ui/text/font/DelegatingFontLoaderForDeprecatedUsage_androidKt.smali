.class public final Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final createFontFamilyResolver(Landroidx/compose/ui/text/font/Font$ResourceLoader;)Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .locals 8
    .annotation runtime Lul2;
    .end annotation

    .line 22
    new-instance v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    new-instance v1, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;

    invoke-direct {v1, p0}, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;-><init>(Landroidx/compose/ui/text/font/Font$ResourceLoader;)V

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;-><init>(Landroidx/compose/ui/text/font/PlatformFontLoader;Landroidx/compose/ui/text/font/PlatformResolveInterceptor;Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;ILjh2;)V

    return-object v0
.end method

.method public static final createFontFamilyResolver(Landroidx/compose/ui/text/font/Font$ResourceLoader;Landroid/content/Context;)Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .locals 8
    .annotation runtime Lul2;
    .end annotation

    new-instance v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    new-instance v1, Landroidx/compose/ui/text/font/DelegatingFontLoaderForBridgeUsage;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Landroidx/compose/ui/text/font/DelegatingFontLoaderForBridgeUsage;-><init>(Landroidx/compose/ui/text/font/Font$ResourceLoader;Landroid/content/Context;)V

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;-><init>(Landroidx/compose/ui/text/font/PlatformFontLoader;Landroidx/compose/ui/text/font/PlatformResolveInterceptor;Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;ILjh2;)V

    return-object v0
.end method
