.class public interface abstract Landroidx/compose/ui/platform/InspectableValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/InspectableValue$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic access$getInspectableElements$jd(Landroidx/compose/ui/platform/InspectableValue;)Lzo7;
    .locals 0

    invoke-super {p0}, Landroidx/compose/ui/platform/InspectableValue;->getInspectableElements()Lzo7;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$getNameFallback$jd(Landroidx/compose/ui/platform/InspectableValue;)Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Landroidx/compose/ui/platform/InspectableValue;->getNameFallback()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$getValueOverride$jd(Landroidx/compose/ui/platform/InspectableValue;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Landroidx/compose/ui/platform/InspectableValue;->getValueOverride()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getInspectableElements()Lzo7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzo7<",
            "Landroidx/compose/ui/platform/ValueElement;",
            ">;"
        }
    .end annotation

    sget-object p0, Lnx2;->a:Lnx2;

    return-object p0
.end method

.method public getNameFallback()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValueOverride()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
