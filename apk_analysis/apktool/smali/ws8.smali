.class public final synthetic Lws8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lws8;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lws8;->c:Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Lws8;->b:Ljava/util/ArrayList;

    iget-object p0, p0, Lws8;->c:Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;

    invoke-static {v0, p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->a(Ljava/util/ArrayList;Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;Ljava/lang/Object;II)Lj59;

    move-result-object p0

    return-object p0
.end method
