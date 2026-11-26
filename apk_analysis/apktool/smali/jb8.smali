.class public final synthetic Ljb8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/style/ResolvedStyle;

.field public final synthetic c:Landroidx/compose/foundation/style/StyleOuterNode;

.field public final synthetic d:Landroidx/compose/ui/unit/Density;

.field public final synthetic e:Landroidx/compose/foundation/style/ResolvedStyle;

.field public final synthetic f:Lp07;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/style/ResolvedStyle;Lp07;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljb8;->b:Landroidx/compose/foundation/style/ResolvedStyle;

    iput-object p2, p0, Ljb8;->c:Landroidx/compose/foundation/style/StyleOuterNode;

    iput-object p3, p0, Ljb8;->d:Landroidx/compose/ui/unit/Density;

    iput-object p4, p0, Ljb8;->e:Landroidx/compose/foundation/style/ResolvedStyle;

    iput-object p5, p0, Ljb8;->f:Lp07;

    iput-boolean p6, p0, Ljb8;->g:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Ljb8;->f:Lp07;

    iget-boolean v5, p0, Ljb8;->g:Z

    iget-object v0, p0, Ljb8;->b:Landroidx/compose/foundation/style/ResolvedStyle;

    iget-object v1, p0, Ljb8;->c:Landroidx/compose/foundation/style/StyleOuterNode;

    iget-object v2, p0, Ljb8;->d:Landroidx/compose/ui/unit/Density;

    iget-object v3, p0, Ljb8;->e:Landroidx/compose/foundation/style/ResolvedStyle;

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/style/StyleOuterNode;->d(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/style/ResolvedStyle;Lp07;Z)Lj59;

    move-result-object p0

    return-object p0
.end method
