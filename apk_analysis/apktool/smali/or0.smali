.class public final Lor0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lvd9;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lvd9;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lor0;->f:I

    iput-object p1, p0, Lor0;->g:Lvd9;

    iput-object p2, p0, Lor0;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lor0;->f:I

    iget-object v1, p0, Lor0;->h:Ljava/lang/Object;

    iget-object p0, p0, Lor0;->g:Lvd9;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Le77;

    iget-object p0, p0, Le77;->b:Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;

    check-cast v1, Lf77;

    iget-object p1, v1, Lf77;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Le77$a;->onBadgeQuestionClicked(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lmr0;

    iget-object p0, p0, Lmr0;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    check-cast v1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;

    iget-object p1, v1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lmr0$a;->onPromocodeButtonActivate(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
