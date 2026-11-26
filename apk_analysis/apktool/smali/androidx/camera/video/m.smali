.class public final synthetic Landroidx/camera/video/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic b:Landroidx/camera/video/MediaStoreOutputOptions;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/camera/video/MediaStoreOutputOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/video/m;->b:Landroidx/camera/video/MediaStoreOutputOptions;

    iput-object p1, p0, Landroidx/camera/video/m;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/m;->c:Landroid/content/Context;

    check-cast p1, Landroid/net/Uri;

    iget-object p0, p0, Landroidx/camera/video/m;->b:Landroidx/camera/video/MediaStoreOutputOptions;

    invoke-static {p0, v0, p1}, Landroidx/camera/video/Recorder$RecordingRecord;->g(Landroidx/camera/video/MediaStoreOutputOptions;Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
