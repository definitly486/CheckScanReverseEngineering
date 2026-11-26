.class public final Lrd8;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lsd8;",
        "Lcom/warefly/checkscan/support/databinding/ItemSupportChildButtonBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;)V
    .locals 1

    sget-object v0, Lpd8;->c:Lpd8;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lrd8;->b:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lsd8;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/support/databinding/ItemSupportChildButtonBinding;

    check-cast p2, Lsd8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/support/databinding/ItemSupportChildButtonBinding;->btnAction:Landroid/widget/TextView;

    iget-object v1, p2, Lsd8;->b:Lod8;

    iget-object v1, v1, Lod8;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/support/databinding/ItemSupportChildButtonBinding;->btnAction:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lqd8;

    invoke-direct {v1, p0, p2}, Lqd8;-><init>(Lrd8;Lsd8;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
