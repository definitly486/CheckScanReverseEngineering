.class public final Landroidx/paging/PagingData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PagingData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/paging/PagingData$Companion;

.field private static final NOOP_HINT_RECEIVER:Landroidx/paging/HintReceiver;

.field private static final NOOP_UI_RECEIVER:Landroidx/paging/UiReceiver;


# instance fields
.field private final cachedPageEvent:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Landroidx/paging/PageEvent$Insert<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final flow:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final hintReceiver:Landroidx/paging/HintReceiver;

.field private final uiReceiver:Landroidx/paging/UiReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/paging/PagingData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/PagingData$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/paging/PagingData;->Companion:Landroidx/paging/PagingData$Companion;

    new-instance v0, Landroidx/paging/PagingData$Companion$NOOP_UI_RECEIVER$1;

    invoke-direct {v0}, Landroidx/paging/PagingData$Companion$NOOP_UI_RECEIVER$1;-><init>()V

    sput-object v0, Landroidx/paging/PagingData;->NOOP_UI_RECEIVER:Landroidx/paging/UiReceiver;

    new-instance v0, Landroidx/paging/PagingData$Companion$NOOP_HINT_RECEIVER$1;

    invoke-direct {v0}, Landroidx/paging/PagingData$Companion$NOOP_HINT_RECEIVER$1;-><init>()V

    sput-object v0, Landroidx/paging/PagingData;->NOOP_HINT_RECEIVER:Landroidx/paging/HintReceiver;

    return-void
.end method

.method public constructor <init>(Lhd3;Landroidx/paging/UiReceiver;Landroidx/paging/HintReceiver;Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhd3<",
            "+",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;",
            "Landroidx/paging/UiReceiver;",
            "Landroidx/paging/HintReceiver;",
            "Lll3<",
            "Landroidx/paging/PageEvent$Insert<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/PagingData;->flow:Lhd3;

    iput-object p2, p0, Landroidx/paging/PagingData;->uiReceiver:Landroidx/paging/UiReceiver;

    iput-object p3, p0, Landroidx/paging/PagingData;->hintReceiver:Landroidx/paging/HintReceiver;

    iput-object p4, p0, Landroidx/paging/PagingData;->cachedPageEvent:Lll3;

    return-void
.end method

.method public synthetic constructor <init>(Lhd3;Landroidx/paging/UiReceiver;Landroidx/paging/HintReceiver;Lll3;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 24
    sget-object p4, Landroidx/paging/PagingData$1;->INSTANCE:Landroidx/paging/PagingData$1;

    .line 25
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/paging/PagingData;-><init>(Lhd3;Landroidx/paging/UiReceiver;Landroidx/paging/HintReceiver;Lll3;)V

    return-void
.end method

.method public static final synthetic access$getNOOP_HINT_RECEIVER$cp()Landroidx/paging/HintReceiver;
    .locals 1

    sget-object v0, Landroidx/paging/PagingData;->NOOP_HINT_RECEIVER:Landroidx/paging/HintReceiver;

    return-object v0
.end method

.method public static final synthetic access$getNOOP_UI_RECEIVER$cp()Landroidx/paging/UiReceiver;
    .locals 1

    sget-object v0, Landroidx/paging/PagingData;->NOOP_UI_RECEIVER:Landroidx/paging/UiReceiver;

    return-object v0
.end method

.method public static final empty()Landroidx/paging/PagingData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Landroidx/paging/PagingData;->Companion:Landroidx/paging/PagingData$Companion;

    invoke-virtual {v0}, Landroidx/paging/PagingData$Companion;->empty()Landroidx/paging/PagingData;

    move-result-object v0

    return-object v0
.end method

.method public static final empty(Landroidx/paging/LoadStates;)Landroidx/paging/PagingData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/LoadStates;",
            ")",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .line 7
    sget-object v0, Landroidx/paging/PagingData;->Companion:Landroidx/paging/PagingData$Companion;

    invoke-virtual {v0, p0}, Landroidx/paging/PagingData$Companion;->empty(Landroidx/paging/LoadStates;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static final empty(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PagingData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/LoadStates;",
            "Landroidx/paging/LoadStates;",
            ")",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .line 8
    sget-object v0, Landroidx/paging/PagingData;->Companion:Landroidx/paging/PagingData$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/paging/PagingData$Companion;->empty(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static final from(Ljava/util/List;)Landroidx/paging/PagingData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .line 17
    sget-object v0, Landroidx/paging/PagingData;->Companion:Landroidx/paging/PagingData$Companion;

    invoke-virtual {v0, p0}, Landroidx/paging/PagingData$Companion;->from(Ljava/util/List;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static final from(Ljava/util/List;I)Landroidx/paging/PagingData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;I)",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .line 12
    sget-object v0, Landroidx/paging/PagingData;->Companion:Landroidx/paging/PagingData$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/paging/PagingData$Companion;->from(Ljava/util/List;I)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static final from(Ljava/util/List;II)Landroidx/paging/PagingData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;II)",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .line 13
    sget-object v0, Landroidx/paging/PagingData;->Companion:Landroidx/paging/PagingData$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/paging/PagingData$Companion;->from(Ljava/util/List;II)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static final from(Ljava/util/List;Landroidx/paging/LoadStates;)Landroidx/paging/PagingData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Landroidx/paging/LoadStates;",
            ")",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .line 14
    sget-object v0, Landroidx/paging/PagingData;->Companion:Landroidx/paging/PagingData$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/paging/PagingData$Companion;->from(Ljava/util/List;Landroidx/paging/LoadStates;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static final from(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PagingData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Landroidx/paging/LoadStates;",
            "Landroidx/paging/LoadStates;",
            ")",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .line 15
    sget-object v0, Landroidx/paging/PagingData;->Companion:Landroidx/paging/PagingData$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/paging/PagingData$Companion;->from(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static final from(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;I)Landroidx/paging/PagingData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Landroidx/paging/LoadStates;",
            "Landroidx/paging/LoadStates;",
            "I)",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .line 16
    sget-object v0, Landroidx/paging/PagingData;->Companion:Landroidx/paging/PagingData$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/paging/PagingData$Companion;->from(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;I)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static final from(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;II)Landroidx/paging/PagingData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Landroidx/paging/LoadStates;",
            "Landroidx/paging/LoadStates;",
            "II)",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Landroidx/paging/PagingData;->Companion:Landroidx/paging/PagingData$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/paging/PagingData$Companion;->from(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;II)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final cachedEvent$paging_common()Landroidx/paging/PageEvent$Insert;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PageEvent$Insert<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PagingData;->cachedPageEvent:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/paging/PageEvent$Insert;

    return-object p0
.end method

.method public final getFlow$paging_common()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PagingData;->flow:Lhd3;

    return-object p0
.end method

.method public final getHintReceiver$paging_common()Landroidx/paging/HintReceiver;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingData;->hintReceiver:Landroidx/paging/HintReceiver;

    return-object p0
.end method

.method public final getUiReceiver$paging_common()Landroidx/paging/UiReceiver;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingData;->uiReceiver:Landroidx/paging/UiReceiver;

    return-object p0
.end method
