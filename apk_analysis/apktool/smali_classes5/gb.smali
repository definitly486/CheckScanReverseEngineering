.class public final Lgb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavArgs;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lgb;->a:I

    iput p2, p0, Lgb;->b:I

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lgb;
    .locals 3

    const-string v0, "linkCheckerId"

    const-class v1, Lgb;

    invoke-static {p0, v0, v1}, Lc9;->j(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "shopId"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    new-instance v1, Lgb;

    invoke-direct {v1, v0, p0}, Lgb;-><init>(II)V

    return-object v1

    :cond_0
    const-string p0, "Required argument \"shopId\" is missing and does not have an android:defaultValue"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "Required argument \"linkCheckerId\" is missing and does not have an android:defaultValue"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lgb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lgb;

    iget v1, p0, Lgb;->a:I

    iget v3, p1, Lgb;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lgb;->b:I

    iget p1, p1, Lgb;->b:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lgb;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lgb;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ", shopId="

    const-string v1, ")"

    iget v2, p0, Lgb;->a:I

    iget p0, p0, Lgb;->b:I

    const-string v3, "AffiliationCheckFragmentArgs(linkCheckerId="

    invoke-static {v2, p0, v3, v0, v1}, Lln;->c(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
