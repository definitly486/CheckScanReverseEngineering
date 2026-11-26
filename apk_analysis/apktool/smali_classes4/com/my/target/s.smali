.class public final Lcom/my/target/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/my/target/e3;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/my/target/e3;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/my/target/s;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/my/target/s;->a:Lcom/my/target/e3;

    return-void
.end method


# virtual methods
.method public final a(Lxda;Lcom/my/target/z1;Lcom/my/target/z1$a;Lcom/my/target/z1;Lcom/my/target/z1;)Lcom/my/target/z0;
    .locals 10

    iget-object v0, p1, Lxda;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/my/target/s;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lao9;->L:Z

    if-eqz v0, :cond_0

    new-instance p0, Lcom/my/target/eb;

    invoke-direct {p0, v1, p2, p5, p4}, Lcom/my/target/eb;-><init>(Landroid/content/Context;Lcom/my/target/z1;Lcom/my/target/p$a;Lcom/my/target/d2$b;)V

    return-object p0

    :cond_0
    iget-object p5, p1, Lxda;->Y:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_1

    new-instance p0, Lcom/my/target/ca;

    invoke-direct {p0, p2, p4, v1}, Lcom/my/target/ca;-><init>(Lcom/my/target/z1;Lcom/my/target/d2$b;Landroid/content/Context;)V

    return-object p0

    :cond_1
    iget-object p1, p1, Lxda;->Z:Lkha;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    new-instance v2, Lcom/my/target/nb;

    new-instance v3, Lcom/my/target/i0;

    invoke-direct {v3, v1}, Lcom/my/target/i0;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/my/target/r1;

    invoke-direct {v4, v1}, Lcom/my/target/r1;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/my/target/f0;

    invoke-direct {p1, v1}, Lcom/my/target/f0;-><init>(Landroid/content/Context;)V

    const/4 p4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5, p4}, Lho9;->a(Landroid/content/Context;Z)Lcom/my/target/n;

    move-result-object p4

    new-instance v5, Lcom/my/target/yj;

    invoke-direct {v5, p4, p1, v1, p3}, Lcom/my/target/yj;-><init>(Lcom/my/target/n;Lcom/my/target/f0;Landroid/content/Context;Lu0a;)V

    iget-object v9, p0, Lcom/my/target/s;->b:Landroid/content/Context;

    const/4 v6, 0x0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/my/target/nb;-><init>(Lcom/my/target/i0;Lcom/my/target/r1;Lcom/my/target/yj;Lcom/my/target/rf;Lcom/my/target/z0$a;Lu0a;Landroid/content/Context;)V

    return-object v2

    :cond_2
    move-object v7, p2

    new-instance v3, Lcom/my/target/fb;

    new-instance v4, Lcom/my/target/i0;

    invoke-direct {v4, v1}, Lcom/my/target/i0;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/my/target/r1;

    invoke-direct {v5, v1}, Lcom/my/target/r1;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/my/target/i6;

    invoke-direct {v6, v1}, Lcom/my/target/i6;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/my/target/s;->b:Landroid/content/Context;

    move-object v8, v7

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/my/target/fb;-><init>(Lcom/my/target/i0;Lcom/my/target/r1;Lcom/my/target/i6;Lcom/my/target/rf;Lcom/my/target/z0$a;Landroid/content/Context;)V

    return-object v3
.end method
