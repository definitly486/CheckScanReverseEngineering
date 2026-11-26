.class public final Lrf3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavDirections;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lrf3;->a:Z

    const p1, 0x7f0a0067

    iput p1, p0, Lrf3;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lrf3;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lrf3;

    iget-boolean p0, p0, Lrf3;->a:Z

    iget-boolean p1, p1, Lrf3;->a:Z

    if-eq p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final getActionId()I
    .locals 0

    iget p0, p0, Lrf3;->b:I

    return p0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isFavorite"

    iget-boolean p0, p0, Lrf3;->a:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    iget-boolean p0, p0, Lrf3;->a:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ActionFavorites(isFavorite="

    const-string v1, ")"

    iget-boolean p0, p0, Lrf3;->a:Z

    invoke-static {v0, v1, p0}, Ll2;->c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
