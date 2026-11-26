.class public final Lyads/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/vc0;


# instance fields
.field public a:Lyads/yv;

.field public final b:Lyads/iw;

.field public c:Lyads/vc0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lyads/iw;->a:Lyads/iw;

    iput-object v0, p0, Lyads/bw;->b:Lyads/iw;

    return-void
.end method


# virtual methods
.method public final a(Lyads/wc0;I)Lyads/cw;
    .locals 7

    iget-object v1, p0, Lyads/bw;->a:Lyads/yv;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lyads/aw;

    invoke-direct {v0, v1}, Lyads/aw;-><init>(Lyads/yv;)V

    goto :goto_0

    :goto_1
    new-instance v0, Lyads/cw;

    new-instance v3, Lyads/ex2;

    invoke-direct {v3}, Lyads/ex2;-><init>()V

    iget-object v5, p0, Lyads/bw;->b:Lyads/iw;

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lyads/cw;-><init>(Lyads/yv;Lyads/wc0;Lyads/ex2;Lyads/aw;Lyads/iw;I)V

    return-object v0
.end method

.method public final a()Lyads/wc0;
    .locals 2

    .line 31
    iget-object v0, p0, Lyads/bw;->c:Lyads/vc0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyads/vc0;->a()Lyads/wc0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Lyads/bw;->a(Lyads/wc0;I)Lyads/cw;

    move-result-object p0

    return-object p0
.end method
