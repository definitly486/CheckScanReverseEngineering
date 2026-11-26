.class public final Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirksLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirksLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirksLoader;

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirksLoader;-><init>()V

    sput-object v0, Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirksLoader;->INSTANCE:Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirksLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final loadQuirks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/viewfinder/core/impl/quirk/Quirk;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v0

    invoke-static {}, Landroidx/camera/viewfinder/core/impl/quirk/SurfaceViewStretchedQuirk;->load()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/camera/viewfinder/core/impl/quirk/SurfaceViewStretchedQuirk;->INSTANCE:Landroidx/camera/viewfinder/core/impl/quirk/SurfaceViewStretchedQuirk;

    invoke-virtual {v0, v1}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Landroidx/camera/viewfinder/core/impl/quirk/SurfaceViewNotCroppedByParentQuirk;->load()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/camera/viewfinder/core/impl/quirk/SurfaceViewNotCroppedByParentQuirk;->INSTANCE:Landroidx/camera/viewfinder/core/impl/quirk/SurfaceViewNotCroppedByParentQuirk;

    invoke-virtual {v0, v1}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v0}, Lu96;->d(Lar4;)Lar4;

    move-result-object v0

    return-object v0
.end method
