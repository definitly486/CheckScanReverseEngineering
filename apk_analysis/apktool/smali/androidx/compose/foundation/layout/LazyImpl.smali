.class final Landroidx/compose/foundation/layout/LazyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcl4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/LazyImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcl4<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/layout/LazyImpl$Companion;

.field public static final UNINITIALIZED_VALUE:I = -0x1


# instance fields
.field private _value:I

.field private final errorMessage:Ljava/lang/String;

.field private final initializer:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/LazyImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/LazyImpl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/foundation/layout/LazyImpl;->Companion:Landroidx/compose/foundation/layout/LazyImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lll3;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/LazyImpl;->initializer:Lll3;

    iput-object p2, p0, Landroidx/compose/foundation/layout/LazyImpl;->errorMessage:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/layout/LazyImpl;->_value:I

    return-void
.end method


# virtual methods
.method public final getErrorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/LazyImpl;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final getInitializer()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/layout/LazyImpl;->initializer:Lll3;

    return-object p0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/layout/LazyImpl;->_value:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/layout/LazyImpl;->initializer:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/layout/LazyImpl;->_value:I

    :cond_0
    if-eq v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/layout/LazyImpl;->errorMessage:Ljava/lang/String;

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/LazyImpl;->getValue()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public isInitialized()Z
    .locals 1

    iget p0, p0, Landroidx/compose/foundation/layout/LazyImpl;->_value:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/LazyImpl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/LazyImpl;->getValue()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/layout/LazyImpl;->errorMessage:Ljava/lang/String;

    return-object p0
.end method
