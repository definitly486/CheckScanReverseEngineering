.class public final Ls15$b;
.super Lv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls15;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv<",
        "Lq15;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Ls15;


# direct methods
.method public constructor <init>(Ls15;)V
    .locals 0

    iput-object p1, p0, Ls15$b;->c:Ls15;

    invoke-direct {p0}, Lv;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)Lq15;
    .locals 2

    iget-object p0, p0, Ls15$b;->c:Ls15;

    iget-object p0, p0, Ls15;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    invoke-static {v0, v1}, Lkx6;->n(II)Ly74;

    move-result-object v0

    iget v1, v0, Lw74;->b:I

    if-ltz v1, :cond_0

    new-instance v1, Lq15;

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0, v0}, Lq15;-><init>(Ljava/lang/String;Ly74;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lq15;

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lq15;

    invoke-super {p0, p1}, Lv;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Ls15$b;->c:Ls15;

    iget-object p0, p0, Ls15;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lq15;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v0

    new-instance v1, Lpn1;

    invoke-direct {v1, v0}, Lpn1;-><init>(Ljava/lang/Iterable;)V

    new-instance v0, Lq92;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lq92;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lf29;

    invoke-direct {p0, v1, v0}, Lf29;-><init>(Lzo7;Lnl3;)V

    new-instance v0, Lf29$a;

    invoke-direct {v0, p0}, Lf29$a;-><init>(Lf29;)V

    return-object v0
.end method
