.class public final Lki8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavArgs;


# instance fields
.field public final a:Lri8;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;


# direct methods
.method public constructor <init>(Lri8;Ljava/lang/String;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lki8;->a:Lri8;

    iput-object p2, p0, Lki8;->b:Ljava/lang/String;

    iput-object p3, p0, Lki8;->c:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lki8;
    .locals 8

    const-string v0, "tabName"

    const-class v1, Lki8;

    invoke-static {p0, v0, v1}, Lc9;->j(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    const-class v1, Landroid/os/Parcelable;

    const-class v3, Lri8;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    const-string v5, " must implement Parcelable or Serializable or must be an Enum."

    const-class v6, Ljava/io/Serializable;

    if-nez v4, :cond_1

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lri8;

    if-eqz v0, :cond_7

    const-string v3, "after_event"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, "deeplink"

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-class v7, Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    invoke-virtual {v1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-object v2

    :cond_3
    :goto_1
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    new-instance v1, Lki8;

    invoke-direct {v1, v0, v3, p0}, Lki8;-><init>(Lri8;Ljava/lang/String;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    return-object v1

    :cond_4
    const-string p0, "Required argument \"deeplink\" is missing and does not have an android:defaultValue"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_5
    const-string p0, "Argument \"after_event\" is marked as non-null but was passed a null value."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_6
    const-string p0, "Required argument \"after_event\" is missing and does not have an android:defaultValue"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_7
    const-string p0, "Argument \"tabName\" is marked as non-null but was passed a null value."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_8
    const-string p0, "Required argument \"tabName\" is missing and does not have an android:defaultValue"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lki8;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lki8;

    iget-object v0, p0, Lki8;->a:Lri8;

    iget-object v1, p1, Lki8;->a:Lri8;

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lki8;->b:Ljava/lang/String;

    iget-object v1, p1, Lki8;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lki8;->c:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    iget-object p1, p1, Lki8;->c:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lki8;->a:Lri8;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lki8;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lki8;->c:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TabContainerFragmentArgs(tabName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lki8;->a:Lri8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", afterEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lki8;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deeplink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lki8;->c:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
