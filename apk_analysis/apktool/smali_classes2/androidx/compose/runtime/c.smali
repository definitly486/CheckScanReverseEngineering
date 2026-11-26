.class public final synthetic Landroidx/compose/runtime/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final synthetic c:Landroidx/compose/runtime/internal/IntRef;

.field public final synthetic d:Landroidx/collection/MutableObjectIntMap;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/DerivedSnapshotState;Landroidx/compose/runtime/internal/IntRef;Landroidx/collection/MutableObjectIntMap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/c;->b:Landroidx/compose/runtime/DerivedSnapshotState;

    iput-object p2, p0, Landroidx/compose/runtime/c;->c:Landroidx/compose/runtime/internal/IntRef;

    iput-object p3, p0, Landroidx/compose/runtime/c;->d:Landroidx/collection/MutableObjectIntMap;

    iput p4, p0, Landroidx/compose/runtime/c;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/c;->d:Landroidx/collection/MutableObjectIntMap;

    iget v1, p0, Landroidx/compose/runtime/c;->e:I

    iget-object v2, p0, Landroidx/compose/runtime/c;->b:Landroidx/compose/runtime/DerivedSnapshotState;

    iget-object p0, p0, Landroidx/compose/runtime/c;->c:Landroidx/compose/runtime/internal/IntRef;

    invoke-static {v2, p0, v0, v1, p1}, Landroidx/compose/runtime/DerivedSnapshotState;->a(Landroidx/compose/runtime/DerivedSnapshotState;Landroidx/compose/runtime/internal/IntRef;Landroidx/collection/MutableObjectIntMap;ILjava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
