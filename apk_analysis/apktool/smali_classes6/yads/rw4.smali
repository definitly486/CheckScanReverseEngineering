.class public final Lyads/rw4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/qw4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    new-instance v0, Lyads/rw4;

    invoke-direct {v0}, Lyads/rw4;-><init>()V

    return-void

    :cond_0
    sget v0, Lyads/qw4;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/rw4;->a:Lyads/qw4;

    sget p0, Lyads/u56;->a:I

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroid/media/metrics/LogSessionId;)V
    .locals 1

    .line 18
    new-instance v0, Lyads/qw4;

    invoke-direct {v0, p1}, Lyads/qw4;-><init>(Landroid/media/metrics/LogSessionId;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lyads/rw4;->a:Lyads/qw4;

    return-void
.end method
