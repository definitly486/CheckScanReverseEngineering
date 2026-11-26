.class public final Lcom/my/target/f3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lev9;

.field public final b:Lcom/my/target/e3;

.field public final c:Landroid/content/Context;

.field public final d:Lon9;


# direct methods
.method public constructor <init>(Lev9;Lcom/my/target/e3;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/f3;->a:Lev9;

    iput-object p2, p0, Lcom/my/target/f3;->b:Lcom/my/target/e3;

    iput-object p3, p0, Lcom/my/target/f3;->c:Landroid/content/Context;

    new-instance p1, Lon9;

    invoke-direct {p1, p3}, Lon9;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/my/target/f3;->d:Lon9;

    return-void
.end method


# virtual methods
.method public final a(Lxda;Lcom/my/target/bg;Lcom/my/target/dg;Landroid/widget/FrameLayout;Lcom/my/target/c3;)Lcom/my/target/hg;
    .locals 9

    iget-object v0, p1, Lxda;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v6, p0, Lcom/my/target/f3;->d:Lon9;

    if-nez v0, :cond_0

    iget-object p1, p1, Lxda;->Y:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfo9;

    iget-boolean v2, p1, Lfo9;->R:Z

    new-instance v1, Lcom/my/target/ig;

    iget-object v8, p0, Lcom/my/target/f3;->c:Landroid/content/Context;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v7, v6

    move-object v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/my/target/ig;-><init>(ZLcom/my/target/bg;Lcom/my/target/dg;Lcom/my/target/c3;Landroid/view/View;Lon9;Landroid/content/Context;)V

    return-object v1

    :cond_0
    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v4, p5

    iget-object p1, p1, Lxda;->Z:Lkha;

    if-eqz p1, :cond_1

    new-instance v1, Lcom/my/target/kg;

    iget-object v7, p0, Lcom/my/target/f3;->c:Landroid/content/Context;

    invoke-direct/range {v1 .. v7}, Lcom/my/target/hg;-><init>(Lcom/my/target/bg;Lcom/my/target/dg;Lcom/my/target/c3;Landroid/view/View;Lon9;Landroid/content/Context;)V

    iget-object p0, v1, Lcom/my/target/hg;->b:Lcom/my/target/e6;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, v1, Lcom/my/target/hg;->h:Lcom/my/target/g5;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, v1, Lcom/my/target/hg;->i:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, v1, Lcom/my/target/hg;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1

    :cond_1
    new-instance v1, Lcom/my/target/jg;

    iget-object v7, p0, Lcom/my/target/f3;->c:Landroid/content/Context;

    invoke-direct/range {v1 .. v7}, Lcom/my/target/hg;-><init>(Lcom/my/target/bg;Lcom/my/target/dg;Lcom/my/target/c3;Landroid/view/View;Lon9;Landroid/content/Context;)V

    return-object v1
.end method
