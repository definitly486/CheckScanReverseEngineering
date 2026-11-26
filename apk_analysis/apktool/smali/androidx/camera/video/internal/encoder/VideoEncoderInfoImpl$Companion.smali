.class public final Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;
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

    invoke-direct {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$toIllegalArgumentException(Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;->toIllegalArgumentException(Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    return-object p0
.end method

.method private final toIllegalArgumentException(Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;
    .locals 0

    instance-of p0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    :cond_1
    return-object p0
.end method
