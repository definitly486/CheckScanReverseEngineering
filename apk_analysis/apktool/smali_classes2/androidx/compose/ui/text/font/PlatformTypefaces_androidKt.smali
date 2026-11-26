.class public final Landroidx/compose/ui/text/font/PlatformTypefaces_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final PlatformTypefaces()Landroidx/compose/ui/text/font/PlatformTypefaces;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/compose/ui/text/font/PlatformTypefacesApi;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/PlatformTypefacesApi;-><init>()V

    return-object v0
.end method

.method public static final getWeightSuffixForFallbackFamilyName(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontWeight;->getWeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x64

    const/4 v0, 0x2

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    const-string p1, "-thin"

    invoke-static {p0, p1}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x4

    if-gt v0, p1, :cond_1

    if-ge p1, v1, :cond_1

    const-string p1, "-light"

    invoke-static {p0, p1}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne p1, v1, :cond_2

    return-object p0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    const-string p1, "-medium"

    invoke-static {p0, p1}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v0, 0x6

    const/16 v1, 0x8

    if-gt v0, p1, :cond_4

    if-ge p1, v1, :cond_4

    return-object p0

    :cond_4
    if-gt v1, p1, :cond_5

    const/16 v0, 0xb

    if-ge p1, v0, :cond_5

    const-string p1, "-black"

    invoke-static {p0, p1}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_5
    return-object p0
.end method

.method public static final setFontVariationSettings(Landroid/graphics/Typeface;Landroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/font/TypefaceCompatApi26;->INSTANCE:Landroidx/compose/ui/text/font/TypefaceCompatApi26;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/ui/text/font/TypefaceCompatApi26;->setFontVariationSettings(Landroid/graphics/Typeface;Landroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
