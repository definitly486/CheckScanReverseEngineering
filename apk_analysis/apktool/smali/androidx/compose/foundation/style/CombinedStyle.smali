.class public final Landroidx/compose/foundation/style/CombinedStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/style/Style;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final styles:[Landroidx/compose/foundation/style/Style;


# direct methods
.method public varargs constructor <init>([Landroidx/compose/foundation/style/Style;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/style/CombinedStyle;->styles:[Landroidx/compose/foundation/style/Style;

    return-void
.end method


# virtual methods
.method public applyStyle(Landroidx/compose/foundation/style/StyleScope;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/foundation/style/CombinedStyle;->styles:[Landroidx/compose/foundation/style/Style;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Landroidx/compose/foundation/style/Style;->applyStyle(Landroidx/compose/foundation/style/StyleScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    instance-of v0, p1, Landroidx/compose/foundation/style/CombinedStyle;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/style/CombinedStyle;->styles:[Landroidx/compose/foundation/style/Style;

    check-cast p1, Landroidx/compose/foundation/style/CombinedStyle;

    iget-object p1, p1, Landroidx/compose/foundation/style/CombinedStyle;->styles:[Landroidx/compose/foundation/style/Style;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getStyles()[Landroidx/compose/foundation/style/Style;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/CombinedStyle;->styles:[Landroidx/compose/foundation/style/Style;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/CombinedStyle;->styles:[Landroidx/compose/foundation/style/Style;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
