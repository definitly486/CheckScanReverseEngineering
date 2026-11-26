.class public abstract Lyads/fs5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/op4;

.field public b:Lyads/k06;

.field public c:Lyads/zs2;

.field public d:Lyads/qp4;

.field public e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:Lyads/ds5;

.field public k:J

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/op4;

    invoke-direct {v0}, Lyads/op4;-><init>()V

    iput-object v0, p0, Lyads/fs5;->a:Lyads/op4;

    new-instance v0, Lyads/ds5;

    invoke-direct {v0}, Lyads/ds5;-><init>()V

    iput-object v0, p0, Lyads/fs5;->j:Lyads/ds5;

    return-void
.end method


# virtual methods
.method public abstract a(Lyads/os4;)J
.end method

.method public a(J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lyads/fs5;->g:J

    return-void
.end method

.method public a(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lyads/ds5;

    invoke-direct {p1}, Lyads/ds5;-><init>()V

    iput-object p1, p0, Lyads/fs5;->j:Lyads/ds5;

    iput-wide v0, p0, Lyads/fs5;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lyads/fs5;->h:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lyads/fs5;->h:I

    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lyads/fs5;->e:J

    iput-wide v0, p0, Lyads/fs5;->g:J

    return-void
.end method

.method public abstract a(Lyads/os4;JLyads/ds5;)Z
.end method
