.class public final Lv88;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lla8;",
        "Lcom/warefly/checkscan/databinding/ItemAdmitadRvStepBinding;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lv88$a;->c:Lv88$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lla8;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvStepBinding;

    check-cast p2, Lla8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvStepBinding;->tvStep:Landroid/widget/TextView;

    iget-object p1, p2, Lla8;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
