.class public final synthetic Lr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lc4;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lh3;


# direct methods
.method public synthetic constructor <init>(Lc4;Ljava/lang/String;Lh3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3;->b:Lc4;

    iput-object p2, p0, Lr3;->c:Ljava/lang/String;

    iput-object p3, p0, Lr3;->d:Lh3;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr3;->b:Lc4;

    iget-object v0, v0, Lc4;->a:Ljf6;

    iget-object v1, p0, Lr3;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lix8;->X0(Ljava/lang/String;)V

    iget-object p0, p0, Lr3;->d:Lh3;

    invoke-virtual {p0}, Lh3;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljf6;->k1(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh3;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-interface {v0, v1}, Ljf6;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh3;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljf6;->I(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh3;->c()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p0}, Ljf6;->J(Z)V

    invoke-interface {v0}, Ljf6;->R()V

    sget-object p0, Laq1;->b:Laq1;

    return-object p0
.end method
