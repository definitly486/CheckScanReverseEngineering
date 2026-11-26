.class public final Lcom/my/target/eg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcom/my/target/eg;


# direct methods
.method public constructor <init>(Lcom/my/target/eg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/eg$a;->b:Lcom/my/target/eg;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/my/target/eg$a;->b:Lcom/my/target/eg;

    iget-object v0, p0, Lcom/my/target/eg;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/my/target/eg;->C:Lcom/my/target/r0$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/my/target/r0$a;->q()V

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/eg;->e()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/my/target/eg;->d:Lcom/my/target/g5;

    if-ne p1, v0, :cond_2

    invoke-virtual {v1}, Lcom/my/target/zf;->h()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/my/target/eg;->C:Lcom/my/target/r0$a;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/my/target/r0$a;->l()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/my/target/eg;->e:Lcom/my/target/g5;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/my/target/eg;->C:Lcom/my/target/r0$a;

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lcom/my/target/zf;->g()Z

    move-result p1

    iget-object v0, p0, Lcom/my/target/eg;->C:Lcom/my/target/r0$a;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/my/target/r0$a;->n()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/my/target/r0$a;->q()V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/my/target/eg;->e()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/my/target/eg;->f:Lcom/my/target/m;

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/my/target/eg;->B:Lcom/my/target/l$a;

    if-eqz p0, :cond_6

    check-cast p0, Lcom/my/target/w2$b;

    invoke-virtual {p0}, Lcom/my/target/w2$b;->a()V

    :cond_6
    return-void
.end method
