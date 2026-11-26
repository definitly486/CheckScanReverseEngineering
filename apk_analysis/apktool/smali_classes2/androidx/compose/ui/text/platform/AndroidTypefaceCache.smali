.class public final Landroidx/compose/ui/text/platform/AndroidTypefaceCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lul2;
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/ui/text/platform/AndroidTypefaceCache;

.field private static final cache:Landroidx/collection/SieveCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SieveCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/compose/ui/text/platform/AndroidTypefaceCache;

    invoke-direct {v0}, Landroidx/compose/ui/text/platform/AndroidTypefaceCache;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/platform/AndroidTypefaceCache;->INSTANCE:Landroidx/compose/ui/text/platform/AndroidTypefaceCache;

    new-instance v1, Landroidx/collection/SieveCache;

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Landroidx/collection/SieveCache;-><init>(IILbm3;Lnl3;Lfm3;ILjh2;)V

    sput-object v1, Landroidx/compose/ui/text/platform/AndroidTypefaceCache;->cache:Landroidx/collection/SieveCache;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/text/platform/AndroidTypefaceCache;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getKey(Landroid/content/Context;Landroidx/compose/ui/text/font/Font;)Ljava/lang/String;
    .locals 2

    instance-of p0, p2, Landroidx/compose/ui/text/font/ResourceFont;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    check-cast p2, Landroidx/compose/ui/text/font/ResourceFont;

    invoke-virtual {p2}, Landroidx/compose/ui/text/font/ResourceFont;->getResId()I

    move-result p2

    const/4 v1, 0x1

    invoke-virtual {p1, p2, p0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object p0, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "res:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p0, p2, Landroidx/compose/ui/text/font/AndroidPreloadedFont;

    if-eqz p0, :cond_2

    check-cast p2, Landroidx/compose/ui/text/font/AndroidPreloadedFont;

    invoke-virtual {p2}, Landroidx/compose/ui/text/font/AndroidPreloadedFont;->getCacheKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "Unknown font type: "

    invoke-static {p2, p0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final getOrCreate(Landroid/content/Context;Landroidx/compose/ui/text/font/Font;)Landroid/graphics/Typeface;
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/platform/AndroidTypefaceCache;->getKey(Landroid/content/Context;Landroidx/compose/ui/text/font/Font;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Landroidx/compose/ui/text/platform/AndroidTypefaceCache;->cache:Landroidx/collection/SieveCache;

    invoke-virtual {v0, p0}, Landroidx/collection/SieveCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    instance-of v0, p2, Landroidx/compose/ui/text/font/ResourceFont;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/compose/ui/text/platform/AndroidResourceFontLoaderHelper;->INSTANCE:Landroidx/compose/ui/text/platform/AndroidResourceFontLoaderHelper;

    move-object v2, p2

    check-cast v2, Landroidx/compose/ui/text/font/ResourceFont;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/ResourceFont;->getResId()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroidx/compose/ui/text/platform/AndroidResourceFontLoaderHelper;->create(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p2, Landroidx/compose/ui/text/font/AndroidFont;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Landroidx/compose/ui/text/font/AndroidFont;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/AndroidFont;->getTypefaceLoader()Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;->loadBlocking(Landroid/content/Context;Landroidx/compose/ui/text/font/AndroidFont;)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    if-eqz p0, :cond_2

    sget-object p2, Landroidx/compose/ui/text/platform/AndroidTypefaceCache;->cache:Landroidx/collection/SieveCache;

    invoke-virtual {p2, p0, p1}, Landroidx/collection/SieveCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1

    :cond_3
    const-string p0, "Unable to load font "

    invoke-static {p2, p0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_4
    const-string p0, "Unknown font type: "

    invoke-static {p2, p0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
