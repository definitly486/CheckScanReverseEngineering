.class public final Lq98$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq98;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:[C

.field public c:Ljava/lang/String;


# virtual methods
.method public final charAt(I)C
    .locals 0

    iget-object p0, p0, Lq98$a;->b:[C

    aget-char p0, p0, p1

    return p0
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Lq98$a;->b:[C

    array-length p0, p0

    return p0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lq98$a;->b:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lq98$a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lq98$a;->b:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lq98$a;->c:Ljava/lang/String;

    :cond_0
    return-object v0
.end method
