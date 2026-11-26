.class public final Lyads/mq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/sh5;


# instance fields
.field public final synthetic a:Lyads/sh5;

.field public final synthetic b:Lyads/nq5;


# direct methods
.method public constructor <init>(Lyads/nq5;Lyads/sh5;)V
    .locals 0

    iput-object p1, p0, Lyads/mq5;->b:Lyads/nq5;

    iput-object p2, p0, Lyads/mq5;->a:Lyads/sh5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(J)Lyads/qh5;
    .locals 8

    iget-object v0, p0, Lyads/mq5;->a:Lyads/sh5;

    invoke-interface {v0, p1, p2}, Lyads/sh5;->b(J)Lyads/qh5;

    move-result-object p1

    new-instance p2, Lyads/qh5;

    new-instance v0, Lyads/uh5;

    iget-object v1, p1, Lyads/qh5;->a:Lyads/uh5;

    iget-wide v2, v1, Lyads/uh5;->a:J

    iget-wide v4, v1, Lyads/uh5;->b:J

    iget-object p0, p0, Lyads/mq5;->b:Lyads/nq5;

    iget-wide v6, p0, Lyads/nq5;->b:J

    add-long/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lyads/uh5;-><init>(JJ)V

    new-instance p0, Lyads/uh5;

    iget-object p1, p1, Lyads/qh5;->b:Lyads/uh5;

    iget-wide v1, p1, Lyads/uh5;->a:J

    iget-wide v3, p1, Lyads/uh5;->b:J

    add-long/2addr v3, v6

    invoke-direct {p0, v1, v2, v3, v4}, Lyads/uh5;-><init>(JJ)V

    invoke-direct {p2, v0, p0}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object p2
.end method

.method public final b()Z
    .locals 0

    .line 40
    iget-object p0, p0, Lyads/mq5;->a:Lyads/sh5;

    invoke-interface {p0}, Lyads/sh5;->b()Z

    move-result p0

    return p0
.end method

.method public final c()J
    .locals 2

    iget-object p0, p0, Lyads/mq5;->a:Lyads/sh5;

    invoke-interface {p0}, Lyads/sh5;->c()J

    move-result-wide v0

    return-wide v0
.end method
