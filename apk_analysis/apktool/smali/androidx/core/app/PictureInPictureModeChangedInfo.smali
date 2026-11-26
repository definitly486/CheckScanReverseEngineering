.class public final Landroidx/core/app/PictureInPictureModeChangedInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isInPictureInPictureMode:Z

.field private newConfiguration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Landroidx/core/app/PictureInPictureModeChangedInfo;->isInPictureInPictureMode:Z

    return-void
.end method

.method public constructor <init>(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/core/app/PictureInPictureModeChangedInfo;-><init>(Z)V

    iput-object p2, p0, Landroidx/core/app/PictureInPictureModeChangedInfo;->newConfiguration:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final getNewConfig()Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/PictureInPictureModeChangedInfo;->newConfiguration:Landroid/content/res/Configuration;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "PictureInPictureModeChangedInfo must be constructed with the constructor that takes a Configuration to access the newConfig. Are you running on an API 26 or higher device that makes this information available?"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isInPictureInPictureMode()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/PictureInPictureModeChangedInfo;->isInPictureInPictureMode:Z

    return p0
.end method
