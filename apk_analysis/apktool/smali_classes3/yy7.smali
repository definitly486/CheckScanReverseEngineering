.class public final synthetic Lyy7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(JJF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lyy7;->b:J

    iput-wide p3, p0, Lyy7;->c:J

    iput p5, p0, Lyy7;->d:F

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 5

    iget-wide v0, p0, Lyy7;->c:J

    iget v2, p0, Lyy7;->d:F

    iget-wide v3, p0, Lyy7;->b:J

    invoke-static {v3, v4, v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->b(JJF)J

    move-result-wide v0

    return-wide v0
.end method
