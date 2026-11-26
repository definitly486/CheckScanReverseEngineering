.class public final Landroidx/camera/viewfinder/core/impl/ImplementationModeCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/viewfinder/core/impl/ImplementationModeCompat$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/viewfinder/core/impl/ImplementationModeCompat$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/viewfinder/core/impl/ImplementationModeCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/viewfinder/core/impl/ImplementationModeCompat$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/viewfinder/core/impl/ImplementationModeCompat;->Companion:Landroidx/camera/viewfinder/core/impl/ImplementationModeCompat$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final chooseCompatibleMode()Landroidx/camera/viewfinder/core/ImplementationMode;
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/impl/ImplementationModeCompat;->Companion:Landroidx/camera/viewfinder/core/impl/ImplementationModeCompat$Companion;

    invoke-virtual {v0}, Landroidx/camera/viewfinder/core/impl/ImplementationModeCompat$Companion;->chooseCompatibleMode()Landroidx/camera/viewfinder/core/ImplementationMode;

    move-result-object v0

    return-object v0
.end method
