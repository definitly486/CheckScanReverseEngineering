.class public final Luz4$d;
.super Luz4$c;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lre4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luz4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Luz4$c<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "TK;>;",
        "Lre4;"
    }
.end annotation


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Luz4$c;->a()V

    iget v0, p0, Luz4$c;->c:I

    iget-object v1, p0, Luz4$c;->b:Luz4;

    iget v2, v1, Luz4;->g:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Luz4$c;->c:I

    iput v0, p0, Luz4$c;->d:I

    iget-object v1, v1, Luz4;->b:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-virtual {p0}, Luz4$c;->b()V

    return-object v0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
