.class public final Ltt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavArgs;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ltt0;->a:Ljava/lang/String;

    iput-object p3, p0, Ltt0;->b:Ljava/lang/String;

    iput-object p4, p0, Ltt0;->c:Ljava/lang/String;

    iput p1, p0, Ltt0;->d:I

    iput-boolean p7, p0, Ltt0;->e:Z

    iput-object p5, p0, Ltt0;->f:Ljava/lang/String;

    iput-object p6, p0, Ltt0;->g:Ljava/lang/String;

    iput-boolean p8, p0, Ltt0;->h:Z

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Ltt0;
    .locals 11

    const-string v0, "id"

    const-class v1, Ltt0;

    invoke-static {p0, v0, v1}, Lc9;->j(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    const-string v0, "target"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "campaignCode"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "from_show_case"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move v8, v1

    goto :goto_2

    :cond_1
    move v8, v7

    :goto_2
    const-string v1, "offer_id"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    const-string v9, ""

    if-eqz v6, :cond_3

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v6, v1

    goto :goto_3

    :cond_2
    const-string p0, "Argument \"offer_id\" is marked as non-null but was passed a null value."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v3

    :cond_3
    move-object v6, v9

    :goto_3
    const-string v1, "category_id"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    const-string p0, "Argument \"category_id\" is marked as non-null but was passed a null value."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v3

    :cond_5
    :goto_4
    const-string v1, "is_category"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    :cond_6
    new-instance v1, Ltt0;

    move-object v3, v9

    move v9, v7

    move-object v7, v3

    move-object v3, v0

    invoke-direct/range {v1 .. v9}, Ltt0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v1

    :cond_7
    const-string p0, "Required argument \"campaignCode\" is missing and does not have an android:defaultValue"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v3

    :cond_8
    const-string p0, "Required argument \"tab\" is missing and does not have an android:defaultValue"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v3

    :cond_9
    const-string p0, "Required argument \"target\" is missing and does not have an android:defaultValue"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ltt0;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Ltt0;

    iget-object v0, p0, Ltt0;->a:Ljava/lang/String;

    iget-object v1, p1, Ltt0;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ltt0;->b:Ljava/lang/String;

    iget-object v1, p1, Ltt0;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ltt0;->c:Ljava/lang/String;

    iget-object v1, p1, Ltt0;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget v0, p0, Ltt0;->d:I

    iget v1, p1, Ltt0;->d:I

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Ltt0;->e:Z

    iget-boolean v1, p1, Ltt0;->e:Z

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Ltt0;->f:Ljava/lang/String;

    iget-object v1, p1, Ltt0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Ltt0;->g:Ljava/lang/String;

    iget-object v1, p1, Ltt0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-boolean p0, p0, Ltt0;->h:Z

    iget-boolean p1, p1, Ltt0;->h:Z

    if-eq p0, p1, :cond_9

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Ltt0;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Ltt0;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Ltt0;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget v0, p0, Ltt0;->d:I

    invoke-static {v0, v1, v2}, Lej0;->b(III)I

    move-result v0

    iget-boolean v1, p0, Ltt0;->e:Z

    invoke-static {v0, v2, v1}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v1, p0, Ltt0;->f:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Ltt0;->g:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean p0, p0, Ltt0;->h:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", tab="

    const-string v1, ", campaignCode="

    const-string v2, "BrandlinkFragmentArgs(target="

    iget-object v3, p0, Ltt0;->a:Ljava/lang/String;

    iget-object v4, p0, Ltt0;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    const-string v2, ", fromShowCase="

    iget-object v3, p0, Ltt0;->c:Ljava/lang/String;

    iget v4, p0, Ltt0;->d:I

    invoke-static {v0, v3, v1, v4, v2}, Lo2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-boolean v1, p0, Ltt0;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", offerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltt0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltt0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Ltt0;->h:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
