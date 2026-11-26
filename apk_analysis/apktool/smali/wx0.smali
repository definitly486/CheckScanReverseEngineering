.class public final synthetic Lwx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

.field public final synthetic c:Landroidx/compose/foundation/lazy/layout/CacheWindowScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwx0;->b:Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    iput-object p2, p0, Lwx0;->c:Landroidx/compose/foundation/lazy/layout/CacheWindowScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lwx0;->b:Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    iget-object p0, p0, Lwx0;->c:Landroidx/compose/foundation/lazy/layout/CacheWindowScope;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->a(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)Lj59;

    move-result-object p0

    return-object p0
.end method
