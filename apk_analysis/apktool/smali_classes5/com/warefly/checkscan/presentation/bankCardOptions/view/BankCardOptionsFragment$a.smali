.class public final Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Ldm3<",
        "Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;",
        "Lt90$a;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$a;->f:Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;

    check-cast p2, Lt90$a;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->tvBankOptionName:Landroid/widget/TextView;

    sget v0, Lsx3;->a:I

    invoke-virtual {p2}, Lt90$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lt90$a;->d()Lt90$a$a;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->btnDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->btnDescription:Landroid/widget/TextView;

    new-instance v3, La90;

    invoke-direct {v3, p1, p3}, La90;-><init>(Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;Lt90$a$a;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p3, Lj59;->a:Lj59;

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    const/16 v2, 0x8

    if-nez p3, :cond_1

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->btnDescription:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p2}, Lt90$a;->e()Lt90$a$b;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lt90$a$b;->b()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v3

    invoke-virtual {v3, p3}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p3

    const v3, 0x7f0801bf

    invoke-virtual {p3, v3}, Lee0;->h(I)Lee0;

    move-result-object p3

    check-cast p3, Lh37;

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->ivCardPreview:Landroid/widget/ImageView;

    invoke-virtual {p3, v3}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->ivCardPreview:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->groupCustomCardPreview:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p3, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    sget-object p3, Lj59;->a:Lj59;

    goto :goto_1

    :cond_2
    move-object p3, v0

    :goto_1
    const/4 v2, 0x4

    if-nez p3, :cond_6

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->tvCardPreviewTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lt90$a;->e()Lt90$a$b;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lt90$a$b;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    const-string v3, ""

    :cond_4
    invoke-static {v3}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->ivCardBackground:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lt90$a;->e()Lt90$a$b;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lt90$a$b;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7f060060

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    :goto_2
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->ivCardPreview:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->groupCustomCardPreview:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p3, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_6
    invoke-virtual {p2}, Lt90$a;->f()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->rvCardDescription:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v3, Ljz7;

    sget-object v8, Lcom/warefly/checkscan/presentation/bankCardOptions/view/b;->f:Lcom/warefly/checkscan/presentation/bankCardOptions/view/b;

    const/4 v9, 0x4

    const v4, 0x7f0d011e

    const/4 v6, 0x0

    sget-object v7, Lcom/warefly/checkscan/presentation/bankCardOptions/view/a;->f:Lcom/warefly/checkscan/presentation/bankCardOptions/view/a;

    invoke-direct/range {v3 .. v9}, Ljz7;-><init>(ILjava/util/List;Lrb;Lnl3;Ldm3;I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-nez v0, :cond_8

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->rvCardDescription:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->btnOrderCard:Landroid/widget/TextView;

    new-instance p3, Lb90;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$a;->f:Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;

    invoke-direct {p3, p0, p2}, Lb90;-><init>(Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;Lt90$a;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
