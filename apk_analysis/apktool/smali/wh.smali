.class public final synthetic Lwh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwh;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lwh;->c:I

    iput p3, p0, Lwh;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lwh;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lwh;->c:I

    iget p0, p0, Lwh;->d:I

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->d(Landroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
