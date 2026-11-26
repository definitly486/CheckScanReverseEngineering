.class public final synthetic Lls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lts;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lnl3;

.field public final synthetic e:Lnl3;

.field public final synthetic f:Landroidx/compose/ui/Alignment;

.field public final synthetic g:Landroidx/compose/ui/layout/ContentScale;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lts;Landroidx/compose/ui/Modifier;Lnl3;Lnl3;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lls;->b:Lts;

    iput-object p2, p0, Lls;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lls;->d:Lnl3;

    iput-object p4, p0, Lls;->e:Lnl3;

    iput-object p5, p0, Lls;->f:Landroidx/compose/ui/Alignment;

    iput-object p6, p0, Lls;->g:Landroidx/compose/ui/layout/ContentScale;

    iput p7, p0, Lls;->h:I

    iput p8, p0, Lls;->i:I

    iput p9, p0, Lls;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lls;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v8

    iget p1, p0, Lls;->j:I

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    iget-object v0, p0, Lls;->b:Lts;

    iget-object v1, p0, Lls;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lls;->d:Lnl3;

    iget-object v3, p0, Lls;->e:Lnl3;

    iget-object v4, p0, Lls;->f:Landroidx/compose/ui/Alignment;

    iget-object v5, p0, Lls;->g:Landroidx/compose/ui/layout/ContentScale;

    iget v6, p0, Lls;->h:I

    invoke-static/range {v0 .. v9}, Lms;->a(Lts;Landroidx/compose/ui/Modifier;Lnl3;Lnl3;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
