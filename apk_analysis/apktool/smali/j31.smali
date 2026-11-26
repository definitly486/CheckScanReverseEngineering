.class public final synthetic Lj31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lnl3;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lnl3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj31;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lj31;->c:Ljava/lang/String;

    iput-object p3, p0, Lj31;->d:Lnl3;

    iput p4, p0, Lj31;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lj31;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lj31;->c:Ljava/lang/String;

    iget-object v2, p0, Lj31;->d:Lnl3;

    iget v3, p0, Lj31;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lnl3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
