.class public final Landroidx/compose/foundation/style/BooleanPredefinedKey;
.super Landroidx/compose/foundation/style/StyleStateKey;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/style/PredefinedKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/foundation/style/StyleStateKey<",
        "Ljava/lang/Boolean;",
        ">;",
        "Landroidx/compose/foundation/style/PredefinedKey;"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final mask:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidx/compose/foundation/style/StyleStateKey;-><init>(Ljava/lang/Object;)V

    iput p1, p0, Landroidx/compose/foundation/style/BooleanPredefinedKey;->mask:I

    return-void
.end method

.method public synthetic constructor <init>(IZILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/style/BooleanPredefinedKey;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final getMask()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/BooleanPredefinedKey;->mask:I

    return p0
.end method

.method public getValueFrom$foundation(Landroidx/compose/foundation/style/MutableStyleState;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/MutableStyleState;->getPredefinedState$foundation()I

    move-result p1

    iget p0, p0, Landroidx/compose/foundation/style/BooleanPredefinedKey;->mask:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValueFrom$foundation(Landroidx/compose/foundation/style/MutableStyleState;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/BooleanPredefinedKey;->getValueFrom$foundation(Landroidx/compose/foundation/style/MutableStyleState;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValueTo$foundation(Ljava/lang/Object;Landroidx/compose/foundation/style/MutableStyleState;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/style/BooleanPredefinedKey;->setValueTo$foundation(ZLandroidx/compose/foundation/style/MutableStyleState;)V

    return-void
.end method

.method public setValueTo$foundation(ZLandroidx/compose/foundation/style/MutableStyleState;)V
    .locals 2

    iget p0, p0, Landroidx/compose/foundation/style/BooleanPredefinedKey;->mask:I

    invoke-virtual {p2}, Landroidx/compose/foundation/style/MutableStyleState;->getPredefinedState$foundation()I

    move-result v0

    not-int v1, v0

    and-int/2addr p0, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p0, v0

    invoke-virtual {p2, p0}, Landroidx/compose/foundation/style/MutableStyleState;->setPredefinedState$foundation(I)V

    return-void
.end method
