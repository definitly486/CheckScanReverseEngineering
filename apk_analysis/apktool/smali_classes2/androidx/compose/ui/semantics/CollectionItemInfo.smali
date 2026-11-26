.class public final Landroidx/compose/ui/semantics/CollectionItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final columnIndex:I

.field private final columnSpan:I

.field private final rowIndex:I

.field private final rowSpan:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->rowIndex:I

    iput p2, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->rowSpan:I

    iput p3, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->columnIndex:I

    iput p4, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->columnSpan:I

    return-void
.end method


# virtual methods
.method public final getColumnIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->columnIndex:I

    return p0
.end method

.method public final getColumnSpan()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->columnSpan:I

    return p0
.end method

.method public final getRowIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->rowIndex:I

    return p0
.end method

.method public final getRowSpan()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->rowSpan:I

    return p0
.end method
