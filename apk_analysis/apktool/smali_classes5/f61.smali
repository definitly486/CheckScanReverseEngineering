.class public final Lf61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavArgs;


# instance fields
.field public final a:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf61;->a:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lf61;
    .locals 4

    const-string v0, "deeplink"

    const-class v1, Lf61;

    invoke-static {p0, v0, v1}, Lc9;->j(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-class v1, Landroid/os/Parcelable;

    const-class v3, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " must implement Parcelable or Serializable or must be an Enum."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    if-eqz p0, :cond_2

    new-instance v0, Lf61;

    invoke-direct {v0, p0}, Lf61;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;)V

    return-object v0

    :cond_2
    const-string p0, "Argument \"deeplink\" is marked as non-null but was passed a null value."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_3
    const-string p0, "Required argument \"deeplink\" is missing and does not have an android:defaultValue"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lf61;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lf61;

    iget-object p0, p0, Lf61;->a:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    iget-object p1, p1, Lf61;->a:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lf61;->a:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CashbackFlowFragmentArgs(deeplink="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lf61;->a:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
