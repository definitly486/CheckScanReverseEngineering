.class public final Landroidx/compose/ui/text/font/FontFamily$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/font/FontFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/font/FontFamily$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCursive()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/font/FontFamily;->access$getCursive$cp()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    return-object p0
.end method

.method public final getDefault()Landroidx/compose/ui/text/font/SystemFontFamily;
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/font/FontFamily;->access$getDefault$cp()Landroidx/compose/ui/text/font/SystemFontFamily;

    move-result-object p0

    return-object p0
.end method

.method public final getMonospace()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/font/FontFamily;->access$getMonospace$cp()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    return-object p0
.end method

.method public final getSansSerif()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/font/FontFamily;->access$getSansSerif$cp()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    return-object p0
.end method

.method public final getSerif()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/font/FontFamily;->access$getSerif$cp()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    return-object p0
.end method
