.class public final Landroidx/camera/viewfinder/core/impl/CloseGuardHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;
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

    invoke-direct {p0}, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;
    .locals 2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    const/4 v1, 0x0

    if-lt p0, v0, :cond_0

    new-instance p0, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;

    new-instance v0, Landroidx/camera/viewfinder/core/impl/CloseGuardApi30Impl;

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/impl/CloseGuardApi30Impl;-><init>()V

    invoke-direct {p0, v0, v1}, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;-><init>(Landroidx/camera/viewfinder/core/impl/CloseGuardImpl;Ljh2;)V

    return-object p0

    :cond_0
    new-instance p0, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;

    new-instance v0, Landroidx/camera/viewfinder/core/impl/CloseGuardNoOpImpl;

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/impl/CloseGuardNoOpImpl;-><init>()V

    invoke-direct {p0, v0, v1}, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;-><init>(Landroidx/camera/viewfinder/core/impl/CloseGuardImpl;Ljh2;)V

    return-object p0
.end method
