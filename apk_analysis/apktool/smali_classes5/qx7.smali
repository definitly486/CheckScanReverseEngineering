.class public abstract Lqx7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx83;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Target:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx83<",
        "TTarget;>;"
    }
.end annotation


# instance fields
.field public final a:Ld93;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld93<",
            "TTarget;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Integer;

.field public final c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ld93;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqx7;->a:Ld93;

    iput-object p2, p0, Lqx7;->b:Ljava/lang/Integer;

    iput-object p3, p0, Lqx7;->c:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "The minimum number of digits ("

    const-string p1, ") is negative"

    invoke-static {p2, p0, p1}, Lh8;->f(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()Lvi3;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lvi3<",
            "TTarget;>;"
        }
    .end annotation

    new-instance v0, Lrx7;

    new-instance v1, Lqx7$a;

    iget-object v2, p0, Lqx7;->a:Ld93;

    invoke-interface {v2}, Ld93;->a()Ld3;

    move-result-object v3

    const-string v6, "getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-class v4, Ld3;

    const-string v5, "getterNotNull"

    invoke-direct/range {v1 .. v7}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lqx7;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    const-string v3, "The minimum number of digits ("

    if-ltz v1, :cond_2

    const/16 v4, 0x9

    if-gt v1, v4, :cond_1

    iget-object p0, p0, Lqx7;->c:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    new-instance p0, Ld58;

    invoke-direct {p0, v0}, Ld58;-><init>(Lvi3;)V

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    const-string p0, ") exceeds the length of an Int"

    invoke-static {v1, v3, p0}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-object v2

    :cond_2
    const-string p0, ") is negative"

    invoke-static {v1, v3, p0}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-object v2
.end method

.method public final b()La46;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La46<",
            "TTarget;>;"
        }
    .end annotation

    iget-object v0, p0, Lqx7;->a:Ld93;

    invoke-interface {v0}, Ld93;->a()Ld3;

    move-result-object v4

    invoke-interface {v0}, Ld93;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x1

    iget-object v1, p0, Lqx7;->b:Ljava/lang/Integer;

    const/4 v2, 0x0

    iget-object v3, p0, Lqx7;->c:Ljava/lang/Integer;

    invoke-static/range {v1 .. v6}, Lor4;->b(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhs;Ljava/lang/String;Z)La46;

    move-result-object p0

    move-object v7, v2

    filled-new-array {p0}, [La46;

    move-result-object p0

    invoke-static {p0}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lor4;->b(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhs;Ljava/lang/String;Z)La46;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, La46;

    new-instance v8, Lw86;

    const-string v1, "+"

    invoke-direct {v8, v1}, Lw86;-><init>(Ljava/lang/String;)V

    new-instance v9, Lhq5;

    new-instance v1, Lk79;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lk79;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lhs;Ljava/lang/String;Z)V

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v9, v1}, Lhq5;-><init>(Ljava/util/List;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ly36;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lkx2;->b:Lkx2;

    invoke-direct {v0, v1, v2}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, La46;

    invoke-direct {v0, v2, p0}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final c()Ld93;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld93<",
            "TTarget;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lqx7;->a:Ld93;

    return-object p0
.end method
