.class public final synthetic Lkc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lll3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lll3;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/TextStyle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkc1;->b:Ljava/lang/String;

    iput-object p2, p0, Lkc1;->c:Lll3;

    iput-object p3, p0, Lkc1;->d:Landroidx/compose/ui/Modifier;

    iput-wide p4, p0, Lkc1;->e:J

    iput-wide p6, p0, Lkc1;->f:J

    iput-object p8, p0, Lkc1;->g:Landroidx/compose/ui/text/TextStyle;

    iput p9, p0, Lkc1;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lkc1;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    iget-object v0, p0, Lkc1;->b:Ljava/lang/String;

    iget-object v1, p0, Lkc1;->c:Lll3;

    iget-object v2, p0, Lkc1;->d:Landroidx/compose/ui/Modifier;

    iget-wide v3, p0, Lkc1;->e:J

    iget-wide v5, p0, Lkc1;->f:J

    iget-object v7, p0, Lkc1;->g:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v0 .. v9}, Llc1;->a(Ljava/lang/String;Lll3;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
