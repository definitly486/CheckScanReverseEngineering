.class public final Lcq8;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lux5;",
        "Lcom/warefly/checkscan/databinding/ItemRewardTermNewBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lv05;


# direct methods
.method public constructor <init>(Lv05;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcq8$a;->c:Lcq8$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lcq8;->b:Lv05;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lux5;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRewardTermNewBinding;

    check-cast p2, Lux5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRewardTermNewBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lux5;->a:Ljava/lang/String;

    iget-object p0, p0, Lcq8;->b:Lv05;

    invoke-virtual {p0, v0, v1}, Lv05;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRewardTermNewBinding;->tvBonus:Landroid/widget/TextView;

    iget-object p1, p2, Lux5;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
