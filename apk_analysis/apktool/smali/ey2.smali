.class public final synthetic Ley2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/internal/encoder/EncoderImpl;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ley2;->b:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iput-object p2, p0, Ley2;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Ley2;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ley2;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Ley2;->d:Ljava/lang/Runnable;

    iget-object p0, p0, Ley2;->b:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-static {p0, v0, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->p(Landroidx/camera/video/internal/encoder/EncoderImpl;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method
