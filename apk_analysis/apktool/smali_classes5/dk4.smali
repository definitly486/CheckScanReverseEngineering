.class public final Ldk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz3;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldk4;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ldk4;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Ldk4;

    iget-object p0, p0, Ldk4;->a:Ljava/util/List;

    iget-object p1, p1, Ldk4;->a:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f()Ljava/lang/Object;
    .locals 7

    iget-object p0, p0, Ldk4;->a:Ljava/util/List;

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    const/4 v5, 0x0

    const/16 v6, 0x3f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u0423\u0441\u043b\u043e\u0432\u0438\u044f \u0431\u0435\u0437 \u0441\u0442\u0430\u0442\u0443\u0441\u0430:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Ldk4;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const v0, 0x7a1e360

    add-int/2addr p0, v0

    return p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    const-string p0, "\u0423\u0441\u043b\u043e\u0432\u0438\u044f \u0431\u0435\u0437 \u0441\u0442\u0430\u0442\u0443\u0441\u0430:"

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "LandingTermsViewModel(title=\u0423\u0441\u043b\u043e\u0432\u0438\u044f \u0431\u0435\u0437 \u0441\u0442\u0430\u0442\u0443\u0441\u0430:, terms="

    const-string v1, ")"

    iget-object p0, p0, Ldk4;->a:Ljava/util/List;

    invoke-static {v0, p0, v1}, Lrs2;->c(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
