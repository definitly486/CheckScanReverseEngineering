.class public final Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LazyAnchor:Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

.field private static final NullAnchor:Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;-><init>(I)V

    sput-object v0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->NullAnchor:Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;-><init>(I)V

    sput-object v0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->LazyAnchor:Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    return-void
.end method

.method public static final anchorHandle(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;J)Landroidx/compose/runtime/composer/linkbuffer/AnchorHandle;
    .locals 2

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/AnchorHandle;

    invoke-static {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->anchorHandle$anchorOf(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object v1

    invoke-static {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getContext(J)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->anchorHandle$anchorOf(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/composer/linkbuffer/AnchorHandle;-><init>(Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V

    return-object v0
.end method

.method private static final anchorHandle$anchorOf(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchorOfAddress(I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->LazyAnchor:Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    return-object p0

    :cond_1
    sget-object p0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->NullAnchor:Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    return-object p0
.end method

.method public static final asLinkAnchor(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;
    .locals 1

    instance-of v0, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "Inconsistent composition"

    invoke-static {p0}, Lav;->b(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0
.end method

.method public static final getLazyAnchor()Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->LazyAnchor:Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    return-object v0
.end method

.method public static final getNullAnchor()Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->NullAnchor:Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    return-object v0
.end method

.method public static final ownsHandle(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;Landroidx/compose/runtime/composer/linkbuffer/AnchorHandle;)Z
    .locals 0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/linkbuffer/AnchorHandle;->ownedBy$runtime(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Z

    move-result p0

    return p0
.end method
