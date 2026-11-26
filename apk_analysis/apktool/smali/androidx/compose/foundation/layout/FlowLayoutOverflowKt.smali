.class public final Landroidx/compose/foundation/layout/FlowLayoutOverflowKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final lazyInt(Ljava/lang/String;Lll3;)Lcl4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lll3<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcl4<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/foundation/layout/LazyImpl;

    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/layout/LazyImpl;-><init>(Lll3;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lazyInt$default(Ljava/lang/String;Lll3;ILjava/lang/Object;)Lcl4;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p0, "Lazy item is not yet initialized"

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlowLayoutOverflowKt;->lazyInt(Ljava/lang/String;Lll3;)Lcl4;

    move-result-object p0

    return-object p0
.end method
