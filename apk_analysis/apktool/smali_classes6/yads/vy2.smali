.class public final Lyads/vy2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcl4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/vy2;->a:Landroid/content/Context;

    new-instance p1, Leh4;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Leh4;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lyads/vy2;->b:Lcl4;

    return-void
.end method

.method public static final a(Lyads/vy2;)Lyads/e85;
    .locals 1

    .line 63
    iget-object p0, p0, Lyads/vy2;->a:Landroid/content/Context;

    .line 64
    invoke-static {p0}, Lyads/in4;->a(Landroid/content/Context;)I

    move-result v0

    .line 65
    invoke-static {p0, v0}, Lyads/f85;->a(Landroid/content/Context;I)Lyads/e85;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lyads/e85;->a()V

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/xy2;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lc31;

    invoke-static {p2}, Lzya;->b(Le02;)Le02;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v0}, Lc31;->u()V

    new-instance p2, Lyads/sv;

    new-instance v1, Lyads/ty2;

    invoke-direct {v1, v0}, Lyads/ty2;-><init>(Lc31;)V

    new-instance v2, Lyads/uy2;

    invoke-direct {v2, v0}, Lyads/uy2;-><init>(Lc31;)V

    invoke-direct {p2, p1, v1, v2}, Lyads/sv;-><init>(Ljava/lang/String;Lyads/ty2;Lyads/uy2;)V

    const/4 p1, 0x0

    iput-boolean p1, p2, Lyads/r75;->j:Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p2, Lyads/r75;->q:Ljava/lang/Object;

    iget-object v1, p0, Lyads/vy2;->b:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/e85;

    invoke-virtual {v1, p2}, Lyads/e85;->a(Lyads/r75;)V

    new-instance p2, Lyads/sy2;

    invoke-direct {p2, p0, p1}, Lyads/sy2;-><init>(Lyads/vy2;Ljava/util/UUID;)V

    invoke-virtual {v0, p2}, Lc31;->n(Lnl3;)V

    invoke-virtual {v0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method
