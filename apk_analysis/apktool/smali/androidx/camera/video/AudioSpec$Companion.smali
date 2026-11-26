.class public final Landroidx/camera/video/AudioSpec$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/AudioSpec;
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

    invoke-direct {p0}, Landroidx/camera/video/AudioSpec$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final builder()Landroidx/camera/video/AudioSpec$Builder;
    .locals 0

    new-instance p0, Landroidx/camera/video/AudioSpec$Builder;

    invoke-direct {p0}, Landroidx/camera/video/AudioSpec$Builder;-><init>()V

    return-object p0
.end method

.method public final getDEFAULT()Landroidx/camera/video/AudioSpec;
    .locals 0

    invoke-static {}, Landroidx/camera/video/AudioSpec;->access$getDEFAULT$cp()Landroidx/camera/video/AudioSpec;

    move-result-object p0

    return-object p0
.end method
