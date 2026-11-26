.class public final Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final layout(IILll3;)Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lll3<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;)",
            "Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;"
        }
    .end annotation

    new-instance p0, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;-><init>(IILll3;)V

    return-object p0
.end method
