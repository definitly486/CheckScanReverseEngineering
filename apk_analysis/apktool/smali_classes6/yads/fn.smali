.class public final Lyads/fn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/sh5;


# instance fields
.field public final a:J

.field public final synthetic b:Lyads/hn;


# direct methods
.method public constructor <init>(Lyads/hn;J)V
    .locals 0

    iput-object p1, p0, Lyads/fn;->b:Lyads/hn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lyads/fn;->a:J

    return-void
.end method


# virtual methods
.method public final b(J)Lyads/qh5;
    .locals 7

    iget-object v0, p0, Lyads/fn;->b:Lyads/hn;

    iget-object v0, v0, Lyads/hn;->g:[Lyads/hz;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lyads/hz;->b(J)Lyads/qh5;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lyads/fn;->b:Lyads/hn;

    iget-object v2, v2, Lyads/hn;->g:[Lyads/hz;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lyads/hz;->b(J)Lyads/qh5;

    move-result-object v2

    iget-object v3, v2, Lyads/qh5;->a:Lyads/uh5;

    iget-wide v3, v3, Lyads/uh5;->b:J

    iget-object v5, v0, Lyads/qh5;->a:Lyads/uh5;

    iget-wide v5, v5, Lyads/uh5;->b:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final b()Z
    .locals 0

    .line 42
    const/4 p0, 0x1

    return p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lyads/fn;->a:J

    return-wide v0
.end method
