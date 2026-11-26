.class public final Landroidx/navigation/ActionOnlyNavDirections;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavDirections;


# instance fields
.field private final actionId:I

.field private final arguments:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/navigation/ActionOnlyNavDirections;->actionId:I

    const/4 p1, 0x0

    new-array p1, p1, [Lb36;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lb36;

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/navigation/ActionOnlyNavDirections;->arguments:Landroid/os/Bundle;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/navigation/ActionOnlyNavDirections;IILjava/lang/Object;)Landroidx/navigation/ActionOnlyNavDirections;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/navigation/ActionOnlyNavDirections;->actionId:I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/navigation/ActionOnlyNavDirections;->copy(I)Landroidx/navigation/ActionOnlyNavDirections;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Landroidx/navigation/ActionOnlyNavDirections;->actionId:I

    return p0
.end method

.method public final copy(I)Landroidx/navigation/ActionOnlyNavDirections;
    .locals 0

    new-instance p0, Landroidx/navigation/ActionOnlyNavDirections;

    invoke-direct {p0, p1}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Landroidx/navigation/ActionOnlyNavDirections;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/navigation/ActionOnlyNavDirections;

    invoke-virtual {p0}, Landroidx/navigation/ActionOnlyNavDirections;->getActionId()I

    move-result p0

    invoke-virtual {p1}, Landroidx/navigation/ActionOnlyNavDirections;->getActionId()I

    move-result p1

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getActionId()I
    .locals 0

    iget p0, p0, Landroidx/navigation/ActionOnlyNavDirections;->actionId:I

    return p0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/ActionOnlyNavDirections;->arguments:Landroid/os/Bundle;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Landroidx/navigation/ActionOnlyNavDirections;->getActionId()I

    move-result p0

    add-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActionOnlyNavDirections(actionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/navigation/ActionOnlyNavDirections;->getActionId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
