.class public final synthetic Ltl4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Lfm3;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lfm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltl4;->b:Lfm3;

    iput p2, p0, Ltl4;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Ltl4;->b:Lfm3;

    iget p0, p0, Ltl4;->c:I

    invoke-static {v0, p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->f(Lfm3;ILandroidx/compose/foundation/lazy/grid/LazyGridItemScope;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
