.class public final Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final components:Landroidx/collection/MutableObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final filters:Landroidx/collection/MutableObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectList<",
            "Lnl3<",
            "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/MutableObjectList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/MutableObjectList;-><init>(IILjh2;)V

    iput-object v0, p0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->components:Landroidx/collection/MutableObjectList;

    new-instance v0, Landroidx/collection/MutableObjectList;

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/MutableObjectList;-><init>(IILjh2;)V

    iput-object v0, p0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->filters:Landroidx/collection/MutableObjectList;

    return-void
.end method


# virtual methods
.method public final addComponent$foundation(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->components:Landroidx/collection/MutableObjectList;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addFilter$foundation(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->filters:Landroidx/collection/MutableObjectList;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final build$foundation()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;
    .locals 13

    new-instance v0, Landroidx/collection/MutableObjectList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/MutableObjectList;-><init>(IILjh2;)V

    iget-object v4, p0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->components:Landroidx/collection/MutableObjectList;

    iget-object v5, v4, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v4, v4, Landroidx/collection/ObjectList;->_size:I

    move v6, v1

    move v7, v2

    move-object v8, v3

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v9, v5, v6

    check-cast v9, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;

    if-eqz v7, :cond_0

    sget-object v10, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;->INSTANCE:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    if-eq v9, v10, :cond_5

    :cond_0
    invoke-static {v9}, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScopeKt;->isSeparator(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v8}, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScopeKt;->isSeparator(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    invoke-static {v9}, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScopeKt;->isSeparator(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->filters:Landroidx/collection/MutableObjectList;

    iget-object v10, v7, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v7, v7, Landroidx/collection/ObjectList;->_size:I

    move v11, v1

    :goto_1
    if-ge v11, v7, :cond_4

    aget-object v12, v10, v11

    check-cast v12, Lnl3;

    invoke-interface {v12, v9}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_3

    :cond_2
    move v7, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v9}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    move v7, v1

    move-object v8, v9

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    iget-object p0, v0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v1, v0, Landroidx/collection/ObjectList;->_size:I

    sub-int/2addr v1, v2

    aget-object v3, p0, v1

    :goto_3
    check-cast v3, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;

    invoke-static {v3}, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScopeKt;->isSeparator(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;)Z

    move-result p0

    if-eqz p0, :cond_8

    iget p0, v0, Landroidx/collection/ObjectList;->_size:I

    sub-int/2addr p0, v2

    invoke-virtual {v0, p0}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    :cond_8
    new-instance p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    invoke-virtual {v0}, Landroidx/collection/MutableObjectList;->asList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final separator()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->components:Landroidx/collection/MutableObjectList;

    sget-object v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;->INSTANCE:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    return-void
.end method
