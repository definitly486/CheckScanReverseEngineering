.class public abstract Lyads/j36;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bo2;


# direct methods
.method public constructor <init>(Lyads/bo2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/j36;->a:Lyads/bo2;

    return-void
.end method

.method public static final a(Lr07;Lyads/i36;Lyads/u66;)Lj59;
    .locals 1

    .line 61
    invoke-virtual {p2}, Lyads/u66;->b()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 62
    :cond_0
    iget-object v0, p0, Lr07;->b:Ljava/lang/Object;

    invoke-static {v0, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    .line 63
    :cond_1
    iput-object p2, p0, Lr07;->b:Ljava/lang/Object;

    .line 64
    invoke-interface {p1, p2}, Lyads/i36;->a(Ljava/lang/Object;)V

    .line 65
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lr07;Lyads/vq0;Ljava/lang/String;Lyads/j36;Lyads/tt;Ljava/lang/Object;)Lj59;
    .locals 1

    .line 55
    iget-object v0, p0, Lr07;->b:Ljava/lang/Object;

    invoke-static {v0, p5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    .line 56
    :cond_0
    iput-object p5, p0, Lr07;->b:Ljava/lang/Object;

    .line 57
    invoke-virtual {p3, p5}, Lyads/j36;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 58
    iget-object p3, p4, Lyads/tt;->b:Lyads/fs2;

    .line 59
    invoke-static {p1, p2, p0, p3}, Lyads/l76;->a(Lyads/vq0;Ljava/lang/String;Ljava/lang/String;Lyads/fs2;)Lyads/k76;

    .line 60
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public final a(Lyads/tt;Ljava/lang/String;Lyads/i36;)Lyads/tp0;
    .locals 9

    iget-object v2, p1, Lyads/tt;->a:Lyads/vq0;

    iget-object v6, v2, Lyads/vq0;->Q:Lyads/db1;

    if-nez v6, :cond_0

    sget-object p0, Lyads/tp0;->a:Lyads/tp0;

    return-object p0

    :cond_0
    new-instance v1, Lr07;

    invoke-direct {v1}, Lr07;-><init>()V

    iget-object v7, v2, Lyads/vq0;->O:Lyads/qb1;

    iget-object v0, p1, Lyads/tt;->b:Lyads/fs2;

    invoke-static {v0}, Lyads/w56;->b(Lyads/fs2;)Lyads/z66;

    move-result-object v8

    if-nez v8, :cond_1

    sget-object p0, Lyads/tp0;->a:Lyads/tp0;

    return-object p0

    :cond_1
    new-instance v0, Lkz9;

    move-object v4, p0

    move-object v5, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lkz9;-><init>(Lr07;Lyads/vq0;Ljava/lang/String;Lyads/j36;Lyads/tt;)V

    invoke-interface {p3, v0}, Lyads/i36;->a(Lnl3;)V

    iget-object p0, v4, Lyads/j36;->a:Lyads/bo2;

    invoke-virtual {p0, v6, v7}, Lyads/bo2;->a(Lyads/db1;Lyads/qb1;)Lyads/ao2;

    move-result-object p0

    new-instance p1, Lyy2;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v1, p3}, Lyy2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v3, p0, p2, p1}, Lyads/z66;->a(Ljava/lang/String;Lyads/ao2;ZLnl3;)Lyads/tp0;

    move-result-object p0

    return-object p0
.end method
