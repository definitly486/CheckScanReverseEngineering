.class public final Lak9;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lck9;",
        "Lcom/warefly/checkscan/databinding/ItemWithdrawalRegisterBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lrj9;


# direct methods
.method public constructor <init>(Lrj9;)V
    .locals 1

    sget-object v0, Lak9$a;->c:Lak9$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lak9;->b:Lrj9;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lck9;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalRegisterBinding;

    check-cast p2, Lck9;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalRegisterBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    iget-object v0, p2, Lck9;->d:Lwi9$e;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalRegisterBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p2, Lck9;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalRegisterBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object p2, p2, Lck9;->c:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalRegisterBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalRegisterBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalRegisterBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lbk9;

    invoke-direct {v2, p0, p1}, Lbk9;-><init>(Lak9;Lcom/warefly/checkscan/databinding/ItemWithdrawalRegisterBinding;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
