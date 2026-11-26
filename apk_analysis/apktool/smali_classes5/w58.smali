.class public final Lw58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavArgs;


# instance fields
.field public final a:Lfi7;

.field public final b:Ljava/lang/String;

.field public final c:J


# direct methods
.method public constructor <init>(JLfi7;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lw58;->a:Lfi7;

    iput-object p4, p0, Lw58;->b:Ljava/lang/String;

    iput-wide p1, p0, Lw58;->c:J

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lw58;
    .locals 5

    const-string v0, "reason"

    const-class v1, Lw58;

    invoke-static {p0, v0, v1}, Lc9;->j(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-class v1, Landroid/os/Parcelable;

    const-class v3, Lfi7;

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

    move-result-object v0

    check-cast v0, Lfi7;

    if-eqz v0, :cond_4

    const-string v1, "waitingQueueReceiptQr"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cheque_request_id"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance p0, Lw58;

    invoke-direct {p0, v2, v3, v0, v1}, Lw58;-><init>(JLfi7;Ljava/lang/String;)V

    return-object p0

    :cond_2
    const-string p0, "Required argument \"cheque_request_id\" is missing and does not have an android:defaultValue"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_3
    const-string p0, "Required argument \"waitingQueueReceiptQr\" is missing and does not have an android:defaultValue"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_4
    const-string p0, "Argument \"reason\" is marked as non-null but was passed a null value."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_5
    const-string p0, "Required argument \"reason\" is missing and does not have an android:defaultValue"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lw58;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lw58;

    iget-object v0, p0, Lw58;->a:Lfi7;

    iget-object v1, p1, Lw58;->a:Lfi7;

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lw58;->b:Ljava/lang/String;

    iget-object v1, p1, Lw58;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lw58;->c:J

    iget-wide p0, p1, Lw58;->c:J

    cmp-long p0, v0, p0

    if-eqz p0, :cond_4

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

    iget-object v0, p0, Lw58;->a:Lfi7;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lw58;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lw58;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpecifyPlaceFlowFragmentArgs(reason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lw58;->a:Lfi7;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", waitingQueueReceiptQr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw58;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chequeRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-wide v2, p0, Lw58;->c:J

    invoke-static {v2, v3, v1, v0}, Lk2;->b(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
