.class public final Lcom/my/target/o0;
.super Lcom/my/target/x0$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lv2a;

.field public final synthetic b:Lcom/my/target/p0;


# direct methods
.method public constructor <init>(Lcom/my/target/p0;Lv2a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/o0;->b:Lcom/my/target/p0;

    iput-object p2, p0, Lcom/my/target/o0;->a:Lv2a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/o0;->a:Lv2a;

    iget-object v0, v0, Lv2a;->b:Lcom/my/target/e3;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/my/target/e3;->a:Lcom/iab/omid/library/corpmailru/adsession/CreativeType;

    sget-object v2, Lcom/iab/omid/library/corpmailru/adsession/CreativeType;->HTML_DISPLAY:Lcom/iab/omid/library/corpmailru/adsession/CreativeType;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/my/target/o0;->b:Lcom/my/target/p0;

    invoke-virtual {p0}, Lcom/my/target/p0;->v()Lcom/my/target/t1;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/my/target/t1;->getCloseButton()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Lcom/my/target/e3$b;

    invoke-direct {v1, p0}, Lcom/my/target/e3$b;-><init>(Landroid/view/View;)V

    filled-new-array {v1}, [Lcom/my/target/e3$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/my/target/e3;->e([Lcom/my/target/e3$b;)V

    :cond_1
    invoke-virtual {v0}, Lcom/my/target/e3;->g()V

    :cond_2
    return-void
.end method
