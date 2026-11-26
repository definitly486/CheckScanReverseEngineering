.class public final synthetic Ltk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Lbm3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltk;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Ltk;->c:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Ltk;->d:Lbm3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Ltk;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Ltk;->c:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Ltk;->d:Lbm3;

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider_androidKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;Lbm3;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
