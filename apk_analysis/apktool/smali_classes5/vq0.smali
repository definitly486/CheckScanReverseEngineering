.class public final Lvq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavArgs;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lsq0;


# direct methods
.method public constructor <init>(ILsq0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lvq0;->a:Ljava/lang/String;

    iput p1, p0, Lvq0;->b:I

    iput-object p2, p0, Lvq0;->c:Lsq0;

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lvq0;
    .locals 6

    const-string v0, "toolbarTitle"

    const-class v1, Lvq0;

    invoke-static {p0, v0, v1}, Lc9;->j(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "id"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "type"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-class v4, Landroid/os/Parcelable;

    const-class v5, Lsq0;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    const-class v4, Ljava/io/Serializable;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " must implement Parcelable or Serializable or must be an Enum."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsq0;

    if-eqz p0, :cond_2

    new-instance v2, Lvq0;

    invoke-direct {v2, v1, p0, v0}, Lvq0;-><init>(ILsq0;Ljava/lang/String;)V

    return-object v2

    :cond_2
    const-string p0, "Argument \"type\" is marked as non-null but was passed a null value."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_3
    const-string p0, "Required argument \"type\" is missing and does not have an android:defaultValue"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_4
    const-string p0, "Required argument \"id\" is missing and does not have an android:defaultValue"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_5
    const-string p0, "Argument \"toolbarTitle\" is marked as non-null but was passed a null value."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_6
    const-string p0, "Required argument \"toolbarTitle\" is missing and does not have an android:defaultValue"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lvq0;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lvq0;

    iget-object v0, p0, Lvq0;->a:Ljava/lang/String;

    iget-object v1, p1, Lvq0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lvq0;->b:I

    iget v1, p1, Lvq0;->b:I

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lvq0;->c:Lsq0;

    iget-object p1, p1, Lvq0;->c:Lsq0;

    if-eq p0, p1, :cond_4

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

    iget-object v0, p0, Lvq0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lvq0;->b:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-object p0, p0, Lvq0;->c:Lsq0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", id="

    const-string v1, ", type="

    iget v2, p0, Lvq0;->b:I

    const-string v3, "BonusesInnerFlowFragmentArgs(toolbarTitle="

    iget-object v4, p0, Lvq0;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v1}, Lmz0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lvq0;->c:Lsq0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
