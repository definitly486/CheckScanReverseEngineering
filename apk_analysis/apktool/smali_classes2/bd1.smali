.class public final synthetic Lbd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd1;->b:Ljava/lang/String;

    iput-object p2, p0, Lbd1;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lbd1;->d:Lbm3;

    iput-object p4, p0, Lbd1;->e:Lbm3;

    iput p5, p0, Lbd1;->f:I

    iput p6, p0, Lbd1;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lbd1;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    iget-object v0, p0, Lbd1;->b:Ljava/lang/String;

    iget-object v1, p0, Lbd1;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lbd1;->d:Lbm3;

    iget-object v3, p0, Lbd1;->e:Lbm3;

    iget v6, p0, Lbd1;->g:I

    invoke-static/range {v0 .. v6}, Ldd1;->a(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
