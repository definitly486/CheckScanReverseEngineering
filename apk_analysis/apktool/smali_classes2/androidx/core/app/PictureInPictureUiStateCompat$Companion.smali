.class public final Landroidx/core/app/PictureInPictureUiStateCompat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/PictureInPictureUiStateCompat;
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

    invoke-direct {p0}, Landroidx/core/app/PictureInPictureUiStateCompat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromPictureInPictureUiState(Landroid/app/PictureInPictureUiState;)Landroidx/core/app/PictureInPictureUiStateCompat;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p0, v0, :cond_0

    new-instance p0, Landroidx/core/app/PictureInPictureUiStateCompat;

    invoke-virtual {p1}, Landroid/app/PictureInPictureUiState;->isStashed()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/PictureInPictureUiState;->isTransitioningToPip()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/core/app/PictureInPictureUiStateCompat;-><init>(ZZ)V

    return-object p0

    :cond_0
    const/16 v0, 0x1f

    const/4 v1, 0x0

    if-lt p0, v0, :cond_1

    new-instance p0, Landroidx/core/app/PictureInPictureUiStateCompat;

    invoke-virtual {p1}, Landroid/app/PictureInPictureUiState;->isStashed()Z

    move-result p1

    invoke-direct {p0, p1, v1}, Landroidx/core/app/PictureInPictureUiStateCompat;-><init>(ZZ)V

    return-object p0

    :cond_1
    new-instance p0, Landroidx/core/app/PictureInPictureUiStateCompat;

    invoke-direct {p0, v1, v1}, Landroidx/core/app/PictureInPictureUiStateCompat;-><init>(ZZ)V

    return-object p0
.end method
