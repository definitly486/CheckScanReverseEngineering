.class public final Landroidx/camera/video/VideoSpec$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/VideoSpec;
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

    invoke-direct {p0}, Landroidx/camera/video/VideoSpec$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final builder()Landroidx/camera/video/VideoSpec$Builder;
    .locals 0

    new-instance p0, Landroidx/camera/video/VideoSpec$Builder;

    invoke-direct {p0}, Landroidx/camera/video/VideoSpec$Builder;-><init>()V

    return-object p0
.end method

.method public final getDEFAULT()Landroidx/camera/video/VideoSpec;
    .locals 0

    invoke-static {}, Landroidx/camera/video/VideoSpec;->access$getDEFAULT$cp()Landroidx/camera/video/VideoSpec;

    move-result-object p0

    return-object p0
.end method

.method public final getQUALITY_SELECTOR_UNSPECIFIED()Landroidx/camera/video/QualitySelector;
    .locals 0

    invoke-static {}, Landroidx/camera/video/VideoSpec;->access$getQUALITY_SELECTOR_UNSPECIFIED$cp()Landroidx/camera/video/QualitySelector;

    move-result-object p0

    return-object p0
.end method
