.class public final Lwd7;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lxd7;",
        "Lcom/warefly/checkscan/scannerml/databinding/ItemRvScannerInfoDescriptionBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lv05;


# direct methods
.method public constructor <init>(Lv05;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lwd7$a;->c:Lwd7$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lwd7;->b:Lv05;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lxd7;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/scannerml/databinding/ItemRvScannerInfoDescriptionBinding;

    check-cast p2, Lxd7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/scannerml/databinding/ItemRvScannerInfoDescriptionBinding;->ivPlaceholder:Landroid/widget/ImageView;

    iget-object v1, p2, Lxd7;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/warefly/checkscan/scannerml/databinding/ItemRvScannerInfoDescriptionBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p2, Lxd7;->a:Ljava/lang/String;

    invoke-static {v1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/scannerml/databinding/ItemRvScannerInfoDescriptionBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/scannerml/databinding/ItemRvScannerInfoDescriptionBinding;->tvDescription:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p2, Lxd7;->b:Ljava/lang/String;

    iget-object p0, p0, Lwd7;->b:Lv05;

    invoke-virtual {p0, p1, p2}, Lv05;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
