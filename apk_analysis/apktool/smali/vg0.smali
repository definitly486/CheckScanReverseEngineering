.class public final synthetic Lvg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic e:Lnl3;

.field public final synthetic f:I

.field public final synthetic g:Z

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lnl3;IZIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvg0;->b:Ljava/lang/String;

    iput-object p2, p0, Lvg0;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lvg0;->d:Landroidx/compose/ui/text/TextStyle;

    iput-object p4, p0, Lvg0;->e:Lnl3;

    iput p5, p0, Lvg0;->f:I

    iput-boolean p6, p0, Lvg0;->g:Z

    iput p7, p0, Lvg0;->h:I

    iput p8, p0, Lvg0;->i:I

    iput p9, p0, Lvg0;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Lvg0;->b:Ljava/lang/String;

    iget-object v1, p0, Lvg0;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lvg0;->d:Landroidx/compose/ui/text/TextStyle;

    iget-object v3, p0, Lvg0;->e:Lnl3;

    iget v4, p0, Lvg0;->f:I

    iget-boolean v5, p0, Lvg0;->g:Z

    iget v6, p0, Lvg0;->h:I

    iget v7, p0, Lvg0;->i:I

    iget v8, p0, Lvg0;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/text/BasicTextKt;->h(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lnl3;IZIIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
