.class public final Landroidx/paging/PagingData$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PagingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/paging/PagingData$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;
    .locals 0

    invoke-static {p0, p1}, Landroidx/paging/PagingData$Companion;->empty$lambda$1(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/paging/PagingData$Companion;->from$lambda$1(Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Landroidx/paging/PageEvent$Insert;
    .locals 1

    invoke-static {}, Landroidx/paging/PagingData$Companion;->empty$lambda$0()Landroidx/paging/PageEvent$Insert;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Ljava/util/List;II)Landroidx/paging/PageEvent$Insert;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/paging/PagingData$Companion;->from$lambda$0(Ljava/util/List;II)Landroidx/paging/PageEvent$Insert;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic empty$default(Landroidx/paging/PagingData$Companion;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;ILjava/lang/Object;)Landroidx/paging/PagingData;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PagingData$Companion;->empty(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method private static final empty$lambda$0()Landroidx/paging/PageEvent$Insert;
    .locals 6

    sget-object v0, Landroidx/paging/PageEvent$Insert;->Companion:Landroidx/paging/PageEvent$Insert$Companion;

    new-instance v1, Landroidx/paging/TransformablePage;

    const/4 v2, 0x0

    sget-object v3, Lkx2;->b:Lkx2;

    invoke-direct {v1, v2, v3}, Landroidx/paging/TransformablePage;-><init>(ILjava/util/List;)V

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroidx/paging/LoadStates;->Companion:Landroidx/paging/LoadStates$Companion;

    invoke-virtual {v2}, Landroidx/paging/LoadStates$Companion;->getIDLE()Landroidx/paging/LoadStates;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/paging/PageEvent$Insert$Companion;->Refresh(Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;

    move-result-object v0

    return-object v0
.end method

.method private static final empty$lambda$1(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;
    .locals 6

    sget-object v0, Landroidx/paging/PageEvent$Insert;->Companion:Landroidx/paging/PageEvent$Insert$Companion;

    new-instance v1, Landroidx/paging/TransformablePage;

    const/4 v2, 0x0

    sget-object v3, Lkx2;->b:Lkx2;

    invoke-direct {v1, v2, v3}, Landroidx/paging/TransformablePage;-><init>(ILjava/util/List;)V

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/paging/PageEvent$Insert$Companion;->Refresh(Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic from$default(Landroidx/paging/PagingData$Companion;Ljava/util/List;IIILjava/lang/Object;)Landroidx/paging/PagingData;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    .line 30
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/paging/PagingData$Companion;->from(Ljava/util/List;II)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic from$default(Landroidx/paging/PagingData$Companion;Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;IIILjava/lang/Object;)Landroidx/paging/PagingData;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    const/4 p7, 0x0

    if-eqz p3, :cond_1

    move v4, p7

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move v5, p7

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    goto :goto_2

    :cond_2
    move v5, p5

    goto :goto_1

    :goto_2
    invoke-virtual/range {v0 .. v5}, Landroidx/paging/PagingData$Companion;->from(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;II)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method private static final from$lambda$0(Ljava/util/List;II)Landroidx/paging/PageEvent$Insert;
    .locals 6

    sget-object v0, Landroidx/paging/PageEvent$Insert;->Companion:Landroidx/paging/PageEvent$Insert$Companion;

    new-instance v1, Landroidx/paging/TransformablePage;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroidx/paging/TransformablePage;-><init>(ILjava/util/List;)V

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object p0, Landroidx/paging/LoadStates;->Companion:Landroidx/paging/LoadStates$Companion;

    invoke-virtual {p0}, Landroidx/paging/LoadStates$Companion;->getIDLE()Landroidx/paging/LoadStates;

    move-result-object v4

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/paging/PageEvent$Insert$Companion;->Refresh(Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;

    move-result-object p0

    return-object p0
.end method

.method private static final from$lambda$1(Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;
    .locals 6

    sget-object v0, Landroidx/paging/PageEvent$Insert;->Companion:Landroidx/paging/PageEvent$Insert$Companion;

    new-instance v1, Landroidx/paging/TransformablePage;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroidx/paging/TransformablePage;-><init>(ILjava/util/List;)V

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/paging/PageEvent$Insert$Companion;->Refresh(Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final empty()Landroidx/paging/PagingData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Landroidx/paging/PagingData;

    .line 42
    new-instance v1, Landroidx/paging/PageEvent$StaticList;

    const/16 v7, 0x18

    const/4 v8, 0x0

    sget-object v2, Lkx2;->b:Lkx2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Landroidx/paging/PageEvent$StaticList;-><init>(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;IIILjh2;)V

    .line 43
    new-instance v2, Lrd3;

    invoke-direct {v2, v1}, Lrd3;-><init>(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Landroidx/paging/PagingData$Companion;->getNOOP_UI_RECEIVER$paging_common()Landroidx/paging/UiReceiver;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Landroidx/paging/PagingData$Companion;->getNOOP_HINT_RECEIVER$paging_common()Landroidx/paging/HintReceiver;

    move-result-object p0

    new-instance v3, Lnc1;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lnc1;-><init>(I)V

    .line 46
    invoke-direct {v0, v2, v1, p0, v3}, Landroidx/paging/PagingData;-><init>(Lhd3;Landroidx/paging/UiReceiver;Landroidx/paging/HintReceiver;Lll3;)V

    return-object v0
.end method

.method public final empty(Landroidx/paging/LoadStates;)Landroidx/paging/PagingData;
    .locals 2
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

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Landroidx/paging/PagingData$Companion;->empty$default(Landroidx/paging/PagingData$Companion;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;ILjava/lang/Object;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public final empty(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PagingData;
    .locals 9
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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/PagingData;

    new-instance v1, Landroidx/paging/PageEvent$StaticList;

    const/16 v7, 0x18

    const/4 v8, 0x0

    sget-object v2, Lkx2;->b:Lkx2;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Landroidx/paging/PageEvent$StaticList;-><init>(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;IIILjh2;)V

    new-instance p1, Lrd3;

    invoke-direct {p1, v1}, Lrd3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/paging/PagingData$Companion;->getNOOP_UI_RECEIVER$paging_common()Landroidx/paging/UiReceiver;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/paging/PagingData$Companion;->getNOOP_HINT_RECEIVER$paging_common()Landroidx/paging/HintReceiver;

    move-result-object p0

    new-instance v1, Lw26;

    invoke-direct {v1, v3, v4}, Lw26;-><init>(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    invoke-direct {v0, p1, p2, p0, v1}, Landroidx/paging/PagingData;-><init>(Lhd3;Landroidx/paging/UiReceiver;Landroidx/paging/HintReceiver;Lll3;)V

    return-object v0
.end method

.method public final from(Ljava/util/List;)Landroidx/paging/PagingData;
    .locals 6
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

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/paging/PagingData$Companion;->from$default(Landroidx/paging/PagingData$Companion;Ljava/util/List;IIILjava/lang/Object;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public final from(Ljava/util/List;I)Landroidx/paging/PagingData;
    .locals 6
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

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/paging/PagingData$Companion;->from$default(Landroidx/paging/PagingData$Companion;Ljava/util/List;IIILjava/lang/Object;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public final from(Ljava/util/List;II)Landroidx/paging/PagingData;
    .locals 7
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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    new-instance v0, Landroidx/paging/PagingData;

    .line 49
    new-instance v1, Landroidx/paging/PageEvent$StaticList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/paging/PageEvent$StaticList;-><init>(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;II)V

    .line 50
    new-instance p1, Lrd3;

    invoke-direct {p1, v1}, Lrd3;-><init>(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Landroidx/paging/PagingData$Companion;->getNOOP_UI_RECEIVER$paging_common()Landroidx/paging/UiReceiver;

    move-result-object p2

    .line 52
    invoke-virtual {p0}, Landroidx/paging/PagingData$Companion;->getNOOP_HINT_RECEIVER$paging_common()Landroidx/paging/HintReceiver;

    move-result-object p0

    .line 53
    new-instance p3, Lv26;

    invoke-direct {p3, v2, v5, v6}, Lv26;-><init>(Ljava/util/List;II)V

    .line 54
    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/paging/PagingData;-><init>(Lhd3;Landroidx/paging/UiReceiver;Landroidx/paging/HintReceiver;Lll3;)V

    return-object v0
.end method

.method public final from(Ljava/util/List;Landroidx/paging/LoadStates;)Landroidx/paging/PagingData;
    .locals 8
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

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Landroidx/paging/PagingData$Companion;->from$default(Landroidx/paging/PagingData$Companion;Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;IIILjava/lang/Object;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public final from(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PagingData;
    .locals 8
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

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Landroidx/paging/PagingData$Companion;->from$default(Landroidx/paging/PagingData$Companion;Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;IIILjava/lang/Object;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public final from(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;I)Landroidx/paging/PagingData;
    .locals 8
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

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Landroidx/paging/PagingData$Companion;->from$default(Landroidx/paging/PagingData$Companion;Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;IIILjava/lang/Object;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public final from(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;II)Landroidx/paging/PagingData;
    .locals 7
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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/PagingData;

    new-instance v1, Landroidx/paging/PageEvent$StaticList;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/paging/PageEvent$StaticList;-><init>(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;II)V

    move-object p4, v3

    move-object p5, v4

    move p2, v5

    move p3, v6

    new-instance v2, Lrd3;

    invoke-direct {v2, v1}, Lrd3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/paging/PagingData$Companion;->getNOOP_UI_RECEIVER$paging_common()Landroidx/paging/UiReceiver;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/paging/PagingData$Companion;->getNOOP_HINT_RECEIVER$paging_common()Landroidx/paging/HintReceiver;

    move-result-object v3

    new-instance p0, Lu26;

    invoke-direct/range {p0 .. p5}, Lu26;-><init>(Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    invoke-direct {v0, v2, v1, v3, p0}, Landroidx/paging/PagingData;-><init>(Lhd3;Landroidx/paging/UiReceiver;Landroidx/paging/HintReceiver;Lll3;)V

    return-object v0
.end method

.method public final getNOOP_HINT_RECEIVER$paging_common()Landroidx/paging/HintReceiver;
    .locals 0

    invoke-static {}, Landroidx/paging/PagingData;->access$getNOOP_HINT_RECEIVER$cp()Landroidx/paging/HintReceiver;

    move-result-object p0

    return-object p0
.end method

.method public final getNOOP_UI_RECEIVER$paging_common()Landroidx/paging/UiReceiver;
    .locals 0

    invoke-static {}, Landroidx/paging/PagingData;->access$getNOOP_UI_RECEIVER$cp()Landroidx/paging/UiReceiver;

    move-result-object p0

    return-object p0
.end method
