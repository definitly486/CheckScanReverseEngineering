.class public final synthetic Lkn7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lll3;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkn7;->b:Lll3;

    iput-object p2, p0, Lkn7;->c:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Lkn7;->b:Lll3;

    iget-object p0, p0, Lkn7;->c:Lnl3;

    invoke-static {v0, p0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->a(Lll3;Lnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
