.class public final synthetic Lkb8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/style/StyleStateKey;

    check-cast p2, Landroidx/compose/foundation/style/StyleState;

    invoke-static {p1, p2}, Landroidx/compose/foundation/style/StyleStateKt;->e(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
