.class public final synthetic Lli;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Z

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:Lnl3;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZJIZLnl3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lli;->b:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Lli;->c:Z

    iput-wide p3, p0, Lli;->d:J

    iput p5, p0, Lli;->e:I

    iput-boolean p6, p0, Lli;->f:Z

    iput-object p7, p0, Lli;->g:Lnl3;

    iput p8, p0, Lli;->h:I

    iput p9, p0, Lli;->i:I

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

    iget-object v0, p0, Lli;->b:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Lli;->c:Z

    iget-wide v2, p0, Lli;->d:J

    iget v4, p0, Lli;->e:I

    iget-boolean v5, p0, Lli;->f:Z

    iget-object v6, p0, Lli;->g:Lnl3;

    iget v7, p0, Lli;->h:I

    iget v8, p0, Lli;->i:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/AndroidExternalSurface_androidKt;->d(Landroidx/compose/ui/Modifier;ZJIZLnl3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
