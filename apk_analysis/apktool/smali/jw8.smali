.class public final synthetic Ljw8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Llw8;

.field public final synthetic c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;


# direct methods
.method public synthetic constructor <init>(Llw8;Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljw8;->b:Llw8;

    iput-object p2, p0, Ljw8;->c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Ljw8;->b:Llw8;

    iget-object p1, p1, Llw8;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    iget-object p0, p0, Ljw8;->c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lsq0;

    iget-object v1, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;->tvSubButton:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, v1, p0}, Lrw8;->onSubTitleWithYellowButtonClick(Lsq0;ILjava/lang/String;)V

    return-void
.end method
