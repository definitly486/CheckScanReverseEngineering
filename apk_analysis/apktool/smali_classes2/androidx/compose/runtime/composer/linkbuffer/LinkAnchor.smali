.class public final Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/Anchor;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private address:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->address:I

    return-void
.end method


# virtual methods
.method public final getAddress()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->address:I

    return p0
.end method

.method public getValid()Z
    .locals 1

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->address:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setAddress(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->address:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{ address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->address:I

    const-string v1, " }"

    invoke-static {v0, v1, p0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
