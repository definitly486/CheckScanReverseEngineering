.class public Lyads/rh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/sh5;


# instance fields
.field public final a:J

.field public final b:Lyads/qh5;


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lyads/rh5;->a:J

    new-instance p1, Lyads/qh5;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    sget-object p2, Lyads/uh5;->c:Lyads/uh5;

    goto :goto_0

    :cond_0
    new-instance p2, Lyads/uh5;

    invoke-direct {p2, v0, v1, p3, p4}, Lyads/uh5;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2, p2}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    iput-object p1, p0, Lyads/rh5;->b:Lyads/qh5;

    return-void
.end method


# virtual methods
.method public final b(J)Lyads/qh5;
    .locals 0

    iget-object p0, p0, Lyads/rh5;->b:Lyads/qh5;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 3
    const/4 p0, 0x0

    return p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lyads/rh5;->a:J

    return-wide v0
.end method
