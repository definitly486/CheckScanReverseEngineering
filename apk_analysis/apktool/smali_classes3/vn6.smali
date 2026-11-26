.class public final synthetic Lvn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd8;


# instance fields
.field public final synthetic b:Lkd8;

.field public final synthetic c:Landroidx/media3/common/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Lkd8;Landroidx/media3/common/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvn6;->b:Lkd8;

    iput-object p2, p0, Lvn6;->c:Landroidx/media3/common/util/Consumer;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lvn6;->b:Lkd8;

    iget-object p0, p0, Lvn6;->c:Landroidx/media3/common/util/Consumer;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->b(Lkd8;Landroidx/media3/common/util/Consumer;)Landroidx/media3/exoplayer/util/ReleasableExecutor;

    move-result-object p0

    return-object p0
.end method
