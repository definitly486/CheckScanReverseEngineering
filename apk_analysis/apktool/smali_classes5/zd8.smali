.class public final Lzd8;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzd8$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lae8;",
        "Lcom/warefly/checkscan/support/databinding/ItemSupportChildQuestionBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;)V
    .locals 1

    sget-object v0, Lyd8;->c:Lyd8;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lzd8;->b:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lae8;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/support/databinding/ItemSupportChildQuestionBinding;

    check-cast p2, Lae8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/support/databinding/ItemSupportChildQuestionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lxd8;

    invoke-direct {v1, p0, p2}, Lxd8;-><init>(Lzd8;Lae8;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/support/databinding/ItemSupportChildQuestionBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p2, Lae8;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/support/databinding/ItemSupportChildQuestionBinding;->ivArrow:Landroid/widget/ImageView;

    iget-boolean p1, p2, Lae8;->d:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0801a6

    goto :goto_0

    :cond_0
    const p1, 0x7f0801a7

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
