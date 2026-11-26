.class public final synthetic Lbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/selection/OffsetProvider;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Modifier;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbi;->b:Landroidx/compose/foundation/text/selection/OffsetProvider;

    iput-object p2, p0, Lbi;->c:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Lbi;->d:J

    iput p5, p0, Lbi;->e:I

    iput p6, p0, Lbi;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lbi;->b:Landroidx/compose/foundation/text/selection/OffsetProvider;

    iget-object v1, p0, Lbi;->c:Landroidx/compose/ui/Modifier;

    iget-wide v2, p0, Lbi;->d:J

    iget v4, p0, Lbi;->e:I

    iget v5, p0, Lbi;->f:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->e(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
