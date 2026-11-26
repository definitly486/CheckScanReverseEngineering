.class public final synthetic Landroidx/camera/video/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic b:Landroidx/camera/video/MediaStoreOutputOptions;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/MediaStoreOutputOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/l;->b:Landroidx/camera/video/MediaStoreOutputOptions;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/l;->b:Landroidx/camera/video/MediaStoreOutputOptions;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Landroidx/camera/video/Recorder$RecordingRecord;->m(Landroidx/camera/video/MediaStoreOutputOptions;Landroid/net/Uri;)V

    return-void
.end method
