.class public final synthetic Lb07;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb07;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lb07;->b:I

    check-cast p1, Landroidx/camera/video/VideoSpec$Builder;

    invoke-static {p0, p1}, Landroidx/camera/video/Recorder$Builder;->c(ILandroidx/camera/video/VideoSpec$Builder;)V

    return-void
.end method
