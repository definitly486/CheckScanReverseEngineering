.class public final Landroidx/navigation/serialization/RouteDeserializerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final decodeArguments(Ldf4;Landroid/os/Bundle;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldf4<",
            "TT;>;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/navigation/serialization/RouteDecoder;

    invoke-direct {v0, p1, p2}, Landroidx/navigation/serialization/RouteDecoder;-><init>(Landroid/os/Bundle;Ljava/util/Map;)V

    check-cast p0, Lxl2;

    invoke-virtual {v0, p0}, Landroidx/navigation/serialization/RouteDecoder;->decodeRouteWithArgs$navigation_common_release(Lxl2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final decodeArguments(Ldf4;Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldf4<",
            "TT;>;",
            "Landroidx/lifecycle/SavedStateHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v0, Landroidx/navigation/serialization/RouteDecoder;

    invoke-direct {v0, p1, p2}, Landroidx/navigation/serialization/RouteDecoder;-><init>(Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)V

    check-cast p0, Lxl2;

    invoke-virtual {v0, p0}, Landroidx/navigation/serialization/RouteDecoder;->decodeRouteWithArgs$navigation_common_release(Lxl2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
