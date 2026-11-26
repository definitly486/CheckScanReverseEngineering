.class public final synthetic Lcs9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic a:Lyads/cu5;

.field public final synthetic b:Lyads/py3;


# direct methods
.method public synthetic constructor <init>(Lyads/cu5;Lyads/nz3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcs9;->a:Lyads/cu5;

    iput-object p2, p0, Lcs9;->b:Lyads/py3;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 7

    iget-object v0, p0, Lcs9;->a:Lyads/cu5;

    iget-object v1, p0, Lcs9;->b:Lyads/py3;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lyads/cu5;->a(Lyads/py3;Landroid/media/MediaCodec;JJ)V

    return-void
.end method
