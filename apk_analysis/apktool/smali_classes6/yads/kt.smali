.class public final Lyads/kt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/sh5;


# instance fields
.field public final a:Lyads/nt;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Lyads/nt;JJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/kt;->a:Lyads/nt;

    iput-wide p2, p0, Lyads/kt;->b:J

    iput-wide p4, p0, Lyads/kt;->c:J

    iput-wide p6, p0, Lyads/kt;->d:J

    iput-wide p8, p0, Lyads/kt;->e:J

    iput-wide p10, p0, Lyads/kt;->f:J

    return-void
.end method


# virtual methods
.method public final b(J)Lyads/qh5;
    .locals 13

    iget-object v0, p0, Lyads/kt;->a:Lyads/nt;

    invoke-interface {v0, p1, p2}, Lyads/nt;->a(J)J

    move-result-wide v1

    iget-wide v5, p0, Lyads/kt;->c:J

    iget-wide v7, p0, Lyads/kt;->d:J

    iget-wide v9, p0, Lyads/kt;->e:J

    iget-wide v11, p0, Lyads/kt;->f:J

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v12}, Lyads/mt;->a(JJJJJJ)J

    move-result-wide v0

    new-instance p0, Lyads/qh5;

    new-instance v2, Lyads/uh5;

    invoke-direct {v2, p1, p2, v0, v1}, Lyads/uh5;-><init>(JJ)V

    invoke-direct {p0, v2, v2}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 31
    const/4 p0, 0x1

    return p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lyads/kt;->b:J

    return-wide v0
.end method
