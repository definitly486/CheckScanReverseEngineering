.class public final Lei7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llk3;


# instance fields
.field public final a:Lfi7;

.field public final b:Ljava/lang/String;

.field public final c:J


# direct methods
.method public constructor <init>(JLfi7;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lei7;->a:Lfi7;

    iput-object p4, p0, Lei7;->b:Ljava/lang/String;

    iput-wide p1, p0, Lei7;->c:J

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;
    .locals 5

    new-instance p1, Lcom/warefly/checkscan/presentation/flows/specifyPlace/view/SpecifyPlaceFlowFragment;

    invoke-direct {p1}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/view/SpecifyPlaceFlowFragment;-><init>()V

    iget-object v0, p0, Lei7;->a:Lfi7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-class v2, Landroid/os/Parcelable;

    const-class v3, Lfi7;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const-string v4, "reason"

    if-eqz v2, :cond_0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const-class v2, Ljava/io/Serializable;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_0
    const-string v0, "waitingQueueReceiptQr"

    iget-object v2, p0, Lei7;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cheque_request_id"

    iget-wide v2, p0, Lei7;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, " must implement Parcelable or Serializable or must be an Enum."

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-class p0, Lei7;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
