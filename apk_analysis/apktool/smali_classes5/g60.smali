.class public final Lg60;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Ldm3<",
        "Lcom/warefly/checkscan/databinding/ItemAlfaCreditBalanceBannerTermBinding;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lg60;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg60;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lg60;->f:Lg60;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemAlfaCreditBalanceBannerTermBinding;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemAlfaCreditBalanceBannerTermBinding;->tvTerm:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
