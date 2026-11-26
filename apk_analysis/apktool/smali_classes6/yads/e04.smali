.class public final Lyads/e04;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 25
    iput-wide v0, p0, Lyads/e04;->b:J

    return-void
.end method

.method public constructor <init>(Lyads/g04;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lyads/f04;->b:J

    iput-wide v0, p0, Lyads/e04;->a:J

    iget-wide v0, p1, Lyads/f04;->c:J

    iput-wide v0, p0, Lyads/e04;->b:J

    iget-boolean v0, p1, Lyads/f04;->d:Z

    iput-boolean v0, p0, Lyads/e04;->c:Z

    iget-boolean v0, p1, Lyads/f04;->e:Z

    iput-boolean v0, p0, Lyads/e04;->d:Z

    iget-boolean p1, p1, Lyads/f04;->f:Z

    iput-boolean p1, p0, Lyads/e04;->e:Z

    return-void
.end method
