.class public final Landroidx/compose/ui/autofill/AutofillTree;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lul2;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/autofill/AutofillNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/autofill/AutofillTree;->children:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getChildren()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/autofill/AutofillNode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/autofill/AutofillTree;->children:Ljava/util/Map;

    return-object p0
.end method

.method public final performAutofill(ILjava/lang/String;)Lj59;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/autofill/AutofillTree;->children:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/autofill/AutofillNode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/autofill/AutofillNode;->getOnFill()Lnl3;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final plusAssign(Landroidx/compose/ui/autofill/AutofillNode;)V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/autofill/AutofillTree;->children:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/compose/ui/autofill/AutofillNode;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
