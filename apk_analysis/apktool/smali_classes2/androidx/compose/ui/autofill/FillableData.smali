.class public interface abstract Landroidx/compose/ui/autofill/FillableData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/autofill/FillableData$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/autofill/FillableData$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/autofill/FillableData$Companion;->$$INSTANCE:Landroidx/compose/ui/autofill/FillableData$Companion;

    sput-object v0, Landroidx/compose/ui/autofill/FillableData;->Companion:Landroidx/compose/ui/autofill/FillableData$Companion;

    return-void
.end method


# virtual methods
.method public getBooleanValue()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDateMillisOrDefault(J)J
    .locals 0

    invoke-interface {p0}, Landroidx/compose/ui/autofill/FillableData;->getDateMillisValue()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method public getDateMillisValue()Ljava/lang/Long;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getListIndexOrDefault(I)I
    .locals 0

    invoke-interface {p0}, Landroidx/compose/ui/autofill/FillableData;->getListIndexValue()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public getListIndexValue()Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTextValue()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
