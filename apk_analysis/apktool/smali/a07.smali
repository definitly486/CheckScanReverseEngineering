.class public final synthetic La07;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic b:Landroidx/camera/video/Recorder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La07;->b:Landroidx/camera/video/Recorder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, La07;->b:Landroidx/camera/video/Recorder;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Landroidx/camera/video/Recorder;->j(Landroidx/camera/video/Recorder;Landroid/net/Uri;)V

    return-void
.end method
