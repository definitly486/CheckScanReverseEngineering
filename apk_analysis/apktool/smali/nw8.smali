.class public final synthetic Lnw8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithButtonBinding;

.field public final synthetic c:Lpw8;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithButtonBinding;Lpw8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnw8;->b:Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithButtonBinding;

    iput-object p2, p0, Lnw8;->c:Lpw8;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lnw8;->b:Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithButtonBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithButtonBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lpw8$a;

    iget v0, p1, Lpw8$a;->a:I

    iget-object v1, p1, Lpw8$a;->b:Lsq0;

    iget-object p1, p1, Lpw8$a;->c:Ljava/lang/String;

    iget-object p0, p0, Lnw8;->c:Lpw8;

    iget-object p0, p0, Lpw8;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    invoke-interface {p0, v0, v1, p1}, Lpw8$b;->onTitleWithButtonClick(ILsq0;Ljava/lang/String;)V

    return-void
.end method
