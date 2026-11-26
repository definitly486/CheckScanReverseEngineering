.class public final synthetic Lb26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb26;->b:Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    iput p2, p0, Lb26;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lb26;->b:Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    iget p0, p0, Lb26;->c:I

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;->a(Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
