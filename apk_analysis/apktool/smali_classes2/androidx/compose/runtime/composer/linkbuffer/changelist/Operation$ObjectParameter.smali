.class public final Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final offset:I


# direct methods
.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->offset:I

    return-void
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)I"
        }
    .end annotation

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    const-string v0, "ObjectParameter(offset="

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lqz0;->d(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->offset:I

    invoke-static {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->offset:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->offset:I

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->offset:I

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->offset:I

    return p0
.end method
