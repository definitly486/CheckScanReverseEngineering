.class public final Lyads/b84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mc5;


# instance fields
.field public final b:Lyads/mc5;

.field public final c:J


# direct methods
.method public constructor <init>(Lyads/mc5;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/b84;->b:Lyads/mc5;

    iput-wide p2, p0, Lyads/b84;->c:J

    return-void
.end method


# virtual methods
.method public final a(Lyads/a03;Lyads/mi0;I)I
    .locals 4

    iget-object v0, p0, Lyads/b84;->b:Lyads/mc5;

    invoke-interface {v0, p1, p2, p3}, Lyads/mc5;->a(Lyads/a03;Lyads/mi0;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    iget-wide v0, p2, Lyads/mi0;->f:J

    iget-wide v2, p0, Lyads/b84;->c:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lyads/mi0;->f:J

    :cond_0
    return p1
.end method

.method public final a()V
    .locals 0

    .line 23
    iget-object p0, p0, Lyads/b84;->b:Lyads/mc5;

    invoke-interface {p0}, Lyads/mc5;->a()V

    return-void
.end method

.method public final b(J)I
    .locals 3

    iget-object v0, p0, Lyads/b84;->b:Lyads/mc5;

    iget-wide v1, p0, Lyads/b84;->c:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lyads/mc5;->b(J)I

    move-result p0

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lyads/b84;->b:Lyads/mc5;

    invoke-interface {p0}, Lyads/mc5;->c()Z

    move-result p0

    return p0
.end method
