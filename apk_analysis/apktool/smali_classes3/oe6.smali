.class public final synthetic Loe6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loe6;->b:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    iput-wide p2, p0, Loe6;->c:J

    iput-wide p4, p0, Loe6;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, Loe6;->c:J

    iget-wide v2, p0, Loe6;->d:J

    iget-object p0, p0, Loe6;->b:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->b(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;JJ)V

    return-void
.end method
