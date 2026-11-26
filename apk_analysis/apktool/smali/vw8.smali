.class public final Lvw8;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lww8;",
        "Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithYellowButtonBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V
    .locals 1

    sget-object v0, Luw8;->c:Luw8;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lvw8;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lww8;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithYellowButtonBinding;

    check-cast p2, Lww8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithYellowButtonBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    iget-object v0, p2, Lww8;->d:Lsq0;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithYellowButtonBinding;->tvSubButton:Landroidx/appcompat/widget/AppCompatTextView;

    iget v0, p2, Lww8;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithYellowButtonBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p2, Lww8;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithYellowButtonBinding;->tvHelpButton:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "\u041a\u0430\u043a \u043f\u043e\u043b\u0443\u0447\u0430\u0442\u044c \u043a\u044d\u0448\u0431\u044d\u043a?"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithYellowButtonBinding;->tvSubButton:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p2, Lww8;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithYellowButtonBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithYellowButtonBinding;->tvHelpButton:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lsw8;

    invoke-direct {v1, p0, p1}, Lsw8;-><init>(Lvw8;Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithYellowButtonBinding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithYellowButtonBinding;->tvSubButton:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Ltw8;

    invoke-direct {v1, p0, p1}, Ltw8;-><init>(Lvw8;Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithYellowButtonBinding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
