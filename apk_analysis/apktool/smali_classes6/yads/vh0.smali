.class public final Lyads/vh0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "https://yandex.com/ads"


# instance fields
.field public final a:Lyads/vn2;


# direct methods
.method public constructor <init>(Lyads/vn2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/vh0;->a:Lyads/vn2;

    return-void
.end method

.method public static final a(Lyads/k35;)Ljava/lang/CharSequence;
    .locals 2

    .line 98
    invoke-interface {p0}, Lyads/k35;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lyads/k35;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "="

    .line 99
    invoke-static {v0, v1, p0}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lyads/vh0;->a:Lyads/vn2;

    iget-object v1, v1, Lyads/vn2;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v1, Lyads/vh0;->b:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    :goto_0
    const/16 v2, 0x2f

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-eq v1, v2, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "v1/debugpanel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyads/vh0;->a:Lyads/vn2;

    iget-object v1, v1, Lyads/vn2;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p0, p0, Lyads/vh0;->a:Lyads/vn2;

    iget-object v1, p0, Lyads/vn2;->b:Ljava/util/List;

    new-instance v6, Lni;

    const/16 p0, 0x9

    invoke-direct {v6, p0}, Lni;-><init>(I)V

    const/4 v5, 0x0

    const/16 v7, 0x1c

    const-string v2, "&"

    const-string v3, "?"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
