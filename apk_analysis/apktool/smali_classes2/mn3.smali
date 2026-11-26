.class public final synthetic Lmn3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Llo3;

.field public final synthetic c:Lnl3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Llo3;Lnl3;Landroidx/compose/ui/Modifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmn3;->b:Llo3;

    iput-object p2, p0, Lmn3;->c:Lnl3;

    iput-object p3, p0, Lmn3;->d:Landroidx/compose/ui/Modifier;

    iput p4, p0, Lmn3;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lmn3;->e:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    iget-object v0, p0, Lmn3;->b:Llo3;

    iget-object v1, p0, Lmn3;->c:Lnl3;

    iget-object p0, p0, Lmn3;->d:Landroidx/compose/ui/Modifier;

    invoke-static {v0, v1, p0, p1, p2}, Lsn3;->b(Llo3;Lnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
