.class public final Lb30;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Ldm3<",
        "Lcom/warefly/checkscan/databinding/ItemRvBalancePlainOperationBinding;",
        "Lb60;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lb30;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb30;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lb30;->f:Lb30;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePlainOperationBinding;

    check-cast p2, Lb60;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePlainOperationBinding;->ivPlaceholder:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object p3, p2, Lb60;->f:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePlainOperationBinding;->ivPlaceholder:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePlainOperationBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p3, p2, Lb60;->b:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePlainOperationBinding;->tvDescription:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p3, p2, Lb60;->c:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePlainOperationBinding;->tvSum:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p3, p2, Lb60;->d:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePlainOperationBinding;->tvStatus:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p3, p2, Lb60;->e:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePlainOperationBinding;->tvStatus:Landroidx/appcompat/widget/AppCompatTextView;

    iget p1, p2, Lb60;->g:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
