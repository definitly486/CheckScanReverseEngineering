.class public final synthetic Lmv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lmv0;->b:I

    iput-object p2, p0, Lmv0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lmv0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget v0, p0, Lmv0;->b:I

    iget-object v1, p0, Lmv0;->d:Ljava/lang/Object;

    iget-object p0, p0, Lmv0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/x64;

    check-cast v1, Lyads/rh0;

    invoke-static {p0, v1, p1}, Lyads/x64;->a(Lyads/x64;Lyads/rh0;Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/my/target/a0;

    move-object v3, v1

    check-cast v3, Lvy9;

    iget-object v0, v3, Lao9;->Q:Lpp9;

    iget-boolean v0, v0, Lpp9;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/a0;->e:Le6a;

    new-instance v1, Lup9;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lup9;-><init>(ILe6a;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lgia;

    invoke-direct {v1}, Lgia;-><init>()V

    :goto_0
    invoke-static {v1}, Ly14;->j(Lpfa;)Lcha;

    move-result-object v6

    iget-object v2, p0, Lcom/my/target/a0;->b:Lcom/my/target/t1$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/my/target/t1$a;->g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    return-void

    :pswitch_1
    check-cast p0, Lov0;

    check-cast v1, Lpv0;

    iget-object p0, p0, Lov0;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    iget-object p1, v1, Lpv0;->c:Ljava/lang/String;

    invoke-interface {p0, p1}, Lov0$a;->onButtonChipItemClick(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
