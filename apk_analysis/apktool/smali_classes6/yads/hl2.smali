.class public final Lyads/hl2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e85;

.field public final b:Lyads/xk2;

.field public final c:Landroid/content/Context;

.field public final d:Lcl4;

.field public final e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lyads/e85;Landroid/content/Context;Lyads/xk2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hl2;->a:Lyads/e85;

    iput-object p3, p0, Lyads/hl2;->b:Lyads/xk2;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/hl2;->c:Landroid/content/Context;

    new-instance p1, Lzq2;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lzq2;-><init>(I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lyads/hl2;->d:Lcl4;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lyads/hl2;->e:Ljava/util/HashMap;

    return-void
.end method

.method public static final a(Lyads/hl2;Ljava/lang/String;Ljava/lang/String;Lyads/cl2;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lc31;

    invoke-static {p3}, Lzya;->b(Le02;)Le02;

    move-result-object p3

    const/4 v1, 0x1

    invoke-direct {v0, v1, p3}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v0}, Lc31;->u()V

    new-instance p3, Lyads/jl2;

    iget-object v1, p0, Lyads/hl2;->c:Landroid/content/Context;

    new-instance v2, Lyads/fl2;

    invoke-direct {v2, p0, p1, v0}, Lyads/fl2;-><init>(Lyads/hl2;Ljava/lang/String;Lc31;)V

    new-instance p1, Lyads/gl2;

    invoke-direct {p1, p0, v0}, Lyads/gl2;-><init>(Lyads/hl2;Lc31;)V

    invoke-direct {p3, p2, v1, v2, p1}, Lyads/jl2;-><init>(Ljava/lang/String;Landroid/content/Context;Lyads/fl2;Lyads/gl2;)V

    new-instance p1, Lyads/el2;

    invoke-direct {p1, p3}, Lyads/el2;-><init>(Lyads/jl2;)V

    invoke-virtual {v0, p1}, Lc31;->n(Lnl3;)V

    iget-object p0, p0, Lyads/hl2;->a:Lyads/e85;

    invoke-virtual {p0, p3}, Lyads/e85;->a(Lyads/r75;)V

    invoke-virtual {v0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method

.method public static final a(Ly22;)Ly22;
    .locals 1

    if-nez p0, :cond_0

    .line 53
    new-instance p0, Lyads/i90;

    invoke-direct {p0}, Lyads/i90;-><init>()V

    .line 54
    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v0

    .line 55
    invoke-static {v0, p0}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object p0

    :cond_0
    return-object p0
.end method
