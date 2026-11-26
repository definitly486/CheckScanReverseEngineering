.class public final Ls88;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lvd9;

.field public final synthetic h:Lpz3;


# direct methods
.method public synthetic constructor <init>(Lvd9;Lpz3;I)V
    .locals 0

    iput p3, p0, Ls88;->f:I

    iput-object p1, p0, Ls88;->g:Lvd9;

    iput-object p2, p0, Ls88;->h:Lpz3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ls88;->f:I

    iget-object v1, p0, Ls88;->h:Lpz3;

    iget-object p0, p0, Ls88;->g:Lvd9;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lhf8;

    iget-object p0, p0, Lhf8;->b:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    check-cast v1, Ljf8;

    iget-object p1, v1, Ljf8;->a:Lff8;

    iget-object p1, p1, Lff8;->e:Lod8;

    iget-object p1, p1, Lod8;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Lhf8$a;->onQuestionActionClicked(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lr88;

    iget-object p0, p0, Lr88;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    check-cast v1, Lt88;

    iget-object p1, v1, Lt88;->d:Lt88$a;

    iget-boolean v0, p1, Lt88$a;->a:Z

    iget-object p1, p1, Lt88$a;->c:Ljava/lang/String;

    iget-object v1, v1, Lt88;->c:Ljava/lang/String;

    invoke-interface {p0, v0, p1, v1}, Lr88$a;->onStepActionClicked(ZLjava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
