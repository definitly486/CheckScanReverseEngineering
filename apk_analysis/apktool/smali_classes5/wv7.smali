.class public final Lwv7;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lav7;",
        "Lcom/warefly/checkscan/databinding/ItemRvShopsButtonMoreBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Liv7;


# direct methods
.method public constructor <init>(Liv7;)V
    .locals 1

    sget-object v0, Lwv7$a;->c:Lwv7$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lwv7;->b:Liv7;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lav7;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvShopsButtonMoreBinding;

    check-cast p2, Lav7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemRvShopsButtonMoreBinding;->btnMorePromocodes:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p2, Lav7;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Llb7;

    new-instance v0, Ln4;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ln4;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
