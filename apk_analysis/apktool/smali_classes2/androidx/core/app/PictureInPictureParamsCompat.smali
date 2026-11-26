.class public final Landroidx/core/app/PictureInPictureParamsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/PictureInPictureParamsCompat$Api26Impl;,
        Landroidx/core/app/PictureInPictureParamsCompat$Api31Impl;,
        Landroidx/core/app/PictureInPictureParamsCompat$Api33Impl;,
        Landroidx/core/app/PictureInPictureParamsCompat$Builder;
    }
.end annotation


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private final aspectRatio:Landroid/util/Rational;

.field private final closeAction:Landroid/app/RemoteAction;

.field private final expandedAspectRatio:Landroid/util/Rational;

.field private final isEnabled:Z

.field private final isSeamlessResizeEnabled:Z

.field private final sourceRectHint:Landroid/graphics/Rect;

.field private final subTitle:Ljava/lang/CharSequence;

.field private final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 81
    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Landroidx/core/app/PictureInPictureParamsCompat;-><init>(ZLandroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;ZLandroid/app/RemoteAction;Landroid/util/Rational;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjh2;)V

    return-void
.end method

.method public constructor <init>(ZLandroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;ZLandroid/app/RemoteAction;Landroid/util/Rational;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/util/Rational;",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/graphics/Rect;",
            "Z",
            "Landroid/app/RemoteAction;",
            "Landroid/util/Rational;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean p1, p0, Landroidx/core/app/PictureInPictureParamsCompat;->isEnabled:Z

    .line 73
    iput-object p2, p0, Landroidx/core/app/PictureInPictureParamsCompat;->aspectRatio:Landroid/util/Rational;

    .line 74
    iput-object p3, p0, Landroidx/core/app/PictureInPictureParamsCompat;->actions:Ljava/util/List;

    .line 75
    iput-object p4, p0, Landroidx/core/app/PictureInPictureParamsCompat;->sourceRectHint:Landroid/graphics/Rect;

    .line 76
    iput-boolean p5, p0, Landroidx/core/app/PictureInPictureParamsCompat;->isSeamlessResizeEnabled:Z

    .line 77
    iput-object p6, p0, Landroidx/core/app/PictureInPictureParamsCompat;->closeAction:Landroid/app/RemoteAction;

    .line 78
    iput-object p7, p0, Landroidx/core/app/PictureInPictureParamsCompat;->expandedAspectRatio:Landroid/util/Rational;

    .line 79
    iput-object p8, p0, Landroidx/core/app/PictureInPictureParamsCompat;->title:Ljava/lang/CharSequence;

    .line 80
    iput-object p9, p0, Landroidx/core/app/PictureInPictureParamsCompat;->subTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;ZLandroid/app/RemoteAction;Landroid/util/Rational;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjh2;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p11, p10, 0x2

    const/4 v0, 0x0

    if-eqz p11, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    sget-object p3, Lkx2;->b:Lkx2;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    const/4 p5, 0x0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    move-object p11, v0

    move-object p9, p7

    move-object p10, p8

    move p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    goto :goto_0

    :cond_8
    move-object p11, p9

    move-object p10, p8

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    :goto_0
    invoke-direct/range {p2 .. p11}, Landroidx/core/app/PictureInPictureParamsCompat;-><init>(ZLandroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;ZLandroid/app/RemoteAction;Landroid/util/Rational;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final getActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/core/app/PictureInPictureParamsCompat;->actions:Ljava/util/List;

    return-object p0
.end method

.method public final getAspectRatio()Landroid/util/Rational;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/PictureInPictureParamsCompat;->aspectRatio:Landroid/util/Rational;

    return-object p0
.end method

.method public final getCloseAction()Landroid/app/RemoteAction;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/PictureInPictureParamsCompat;->closeAction:Landroid/app/RemoteAction;

    return-object p0
.end method

.method public final getExpandedAspectRatio()Landroid/util/Rational;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/PictureInPictureParamsCompat;->expandedAspectRatio:Landroid/util/Rational;

    return-object p0
.end method

.method public final getSourceRectHint()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/PictureInPictureParamsCompat;->sourceRectHint:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getSubTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/PictureInPictureParamsCompat;->subTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/PictureInPictureParamsCompat;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/PictureInPictureParamsCompat;->isEnabled:Z

    return p0
.end method

.method public final isSeamlessResizeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/PictureInPictureParamsCompat;->isSeamlessResizeEnabled:Z

    return p0
.end method

.method public final toPictureInPictureParams()Landroid/app/PictureInPictureParams;
    .locals 11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v2, p0, Landroidx/core/app/PictureInPictureParamsCompat;->aspectRatio:Landroid/util/Rational;

    iget-object v3, p0, Landroidx/core/app/PictureInPictureParamsCompat;->actions:Ljava/util/List;

    iget-object v4, p0, Landroidx/core/app/PictureInPictureParamsCompat;->sourceRectHint:Landroid/graphics/Rect;

    iget-boolean v5, p0, Landroidx/core/app/PictureInPictureParamsCompat;->isEnabled:Z

    iget-boolean v6, p0, Landroidx/core/app/PictureInPictureParamsCompat;->isSeamlessResizeEnabled:Z

    iget-object v7, p0, Landroidx/core/app/PictureInPictureParamsCompat;->expandedAspectRatio:Landroid/util/Rational;

    iget-object v8, p0, Landroidx/core/app/PictureInPictureParamsCompat;->closeAction:Landroid/app/RemoteAction;

    iget-object v9, p0, Landroidx/core/app/PictureInPictureParamsCompat;->title:Ljava/lang/CharSequence;

    iget-object v10, p0, Landroidx/core/app/PictureInPictureParamsCompat;->subTitle:Ljava/lang/CharSequence;

    invoke-static/range {v2 .. v10}, Landroidx/core/app/PictureInPictureParamsCompat$Api33Impl;->create(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;ZZLandroid/util/Rational;Landroid/app/RemoteAction;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/PictureInPictureParams;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Landroidx/core/app/PictureInPictureParamsCompat;->aspectRatio:Landroid/util/Rational;

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Landroidx/core/app/PictureInPictureParamsCompat;->actions:Ljava/util/List;

    iget-object v2, p0, Landroidx/core/app/PictureInPictureParamsCompat;->sourceRectHint:Landroid/graphics/Rect;

    iget-boolean v3, p0, Landroidx/core/app/PictureInPictureParamsCompat;->isEnabled:Z

    iget-boolean p0, p0, Landroidx/core/app/PictureInPictureParamsCompat;->isSeamlessResizeEnabled:Z

    invoke-static {v1, v0, v2, v3, p0}, Landroidx/core/app/PictureInPictureParamsCompat$Api31Impl;->create(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;ZZ)Landroid/app/PictureInPictureParams;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Landroidx/core/app/PictureInPictureParamsCompat;->actions:Ljava/util/List;

    iget-object p0, p0, Landroidx/core/app/PictureInPictureParamsCompat;->sourceRectHint:Landroid/graphics/Rect;

    invoke-static {v1, v0, p0}, Landroidx/core/app/PictureInPictureParamsCompat$Api26Impl;->create(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams;

    move-result-object p0

    return-object p0
.end method
