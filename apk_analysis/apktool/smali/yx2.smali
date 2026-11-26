.class public final synthetic Lyx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/internal/encoder/EncoderImpl;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyx2;->b:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iput-wide p2, p0, Lyx2;->c:J

    iput-wide p4, p0, Lyx2;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, Lyx2;->c:J

    iget-wide v2, p0, Lyx2;->d:J

    iget-object p0, p0, Lyx2;->b:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/camera/video/internal/encoder/EncoderImpl;->k(Landroidx/camera/video/internal/encoder/EncoderImpl;JJ)V

    return-void
.end method
