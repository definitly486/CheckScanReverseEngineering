.class public final synthetic Lun6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Lnm1;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(FLnm1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lun6;->b:F

    iput-object p2, p0, Lun6;->c:Lnm1;

    iput p3, p0, Lun6;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lun6;->d:I

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    iget v1, p0, Lun6;->b:F

    iget-object p0, p0, Lun6;->c:Lnm1;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/ProgressSemanticsKt;->a(FLnm1;ILandroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method
