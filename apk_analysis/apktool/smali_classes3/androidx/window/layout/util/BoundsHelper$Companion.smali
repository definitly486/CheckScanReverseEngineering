.class public final Landroidx/window/layout/util/BoundsHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/util/BoundsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/window/layout/util/BoundsHelper$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/layout/util/BoundsHelper$Companion;

    invoke-direct {v0}, Landroidx/window/layout/util/BoundsHelper$Companion;-><init>()V

    sput-object v0, Landroidx/window/layout/util/BoundsHelper$Companion;->$$INSTANCE:Landroidx/window/layout/util/BoundsHelper$Companion;

    const-string v0, "BoundsHelper"

    sput-object v0, Landroidx/window/layout/util/BoundsHelper$Companion;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Landroidx/window/layout/util/BoundsHelper;
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    sget-object p0, Landroidx/window/layout/util/BoundsHelperApi30Impl;->INSTANCE:Landroidx/window/layout/util/BoundsHelperApi30Impl;

    return-object p0

    :cond_0
    const/16 v0, 0x1d

    if-lt p0, v0, :cond_1

    sget-object p0, Landroidx/window/layout/util/BoundsHelperApi29Impl;->INSTANCE:Landroidx/window/layout/util/BoundsHelperApi29Impl;

    return-object p0

    :cond_1
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_2

    sget-object p0, Landroidx/window/layout/util/BoundsHelperApi28Impl;->INSTANCE:Landroidx/window/layout/util/BoundsHelperApi28Impl;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/window/layout/util/BoundsHelperApi24Impl;->INSTANCE:Landroidx/window/layout/util/BoundsHelperApi24Impl;

    return-object p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0

    sget-object p0, Landroidx/window/layout/util/BoundsHelper$Companion;->TAG:Ljava/lang/String;

    return-object p0
.end method
