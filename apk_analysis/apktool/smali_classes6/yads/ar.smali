.class public abstract Lyads/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/bf5;

.field public final c:Lyads/g1;

.field public final d:Ly22;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bf5;Lyads/g1;Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ar;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/ar;->b:Lyads/bf5;

    iput-object p3, p0, Lyads/ar;->c:Lyads/g1;

    iput-object p4, p0, Lyads/ar;->d:Ly22;

    return-void
.end method


# virtual methods
.method public abstract a(Lyads/n8;Ljava/lang/Object;Lyads/zq;)Ljava/lang/Object;
.end method

.method public final a(Lyads/n8;Lyads/m13;)Ljava/lang/Object;
    .locals 6

    new-instance v1, Lc31;

    invoke-static {p2}, Lzya;->b(Le02;)Le02;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {v1, v0, p2}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v1}, Lc31;->u()V

    new-instance v0, Lyads/wq;

    iget-object v3, p0, Lyads/ar;->d:Ly22;

    iget-object v4, p0, Lyads/ar;->c:Lyads/g1;

    new-instance v5, Lyads/zq;

    const/4 p2, 0x0

    invoke-direct {v5, p0, p2}, Lyads/zq;-><init>(Lyads/ar;Le02;)V

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lyads/wq;-><init>(Lc31;Lyads/n8;Ly22;Lyads/g1;Lyads/zq;)V

    invoke-virtual {p0, v2, v0}, Lyads/ar;->a(Lyads/n8;Lyads/wq;)Lyads/s03;

    move-result-object p1

    new-instance p2, Lyads/yq;

    invoke-direct {p2, v0, p1, p0, v2}, Lyads/yq;-><init>(Lyads/wq;Lyads/s03;Lyads/ar;Lyads/n8;)V

    invoke-virtual {v1, p2}, Lc31;->n(Lnl3;)V

    invoke-virtual {v1}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public abstract a(Lyads/n8;Lyads/wq;)Lyads/s03;
.end method
