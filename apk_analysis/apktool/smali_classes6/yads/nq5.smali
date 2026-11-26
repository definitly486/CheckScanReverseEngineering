.class public final Lyads/nq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/zs2;


# instance fields
.field public final b:J

.field public final c:Lyads/zs2;


# direct methods
.method public constructor <init>(JLyads/zs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lyads/nq5;->b:J

    iput-object p3, p0, Lyads/nq5;->c:Lyads/zs2;

    return-void
.end method


# virtual methods
.method public final a(II)Lyads/k06;
    .locals 0

    .line 12
    iget-object p0, p0, Lyads/nq5;->c:Lyads/zs2;

    invoke-interface {p0, p1, p2}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 0

    .line 11
    iget-object p0, p0, Lyads/nq5;->c:Lyads/zs2;

    invoke-interface {p0}, Lyads/zs2;->a()V

    return-void
.end method

.method public final a(Lyads/sh5;)V
    .locals 2

    iget-object v0, p0, Lyads/nq5;->c:Lyads/zs2;

    new-instance v1, Lyads/mq5;

    invoke-direct {v1, p0, p1}, Lyads/mq5;-><init>(Lyads/nq5;Lyads/sh5;)V

    invoke-interface {v0, v1}, Lyads/zs2;->a(Lyads/sh5;)V

    return-void
.end method
