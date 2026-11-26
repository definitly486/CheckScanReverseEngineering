.class public final Lyads/p04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final h:Lyads/jv;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lyads/k04;

.field public final d:Lyads/j04;

.field public final e:Lyads/t04;

.field public final f:Lyads/g04;

.field public final g:Lyads/m04;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lyads/e04;

    invoke-direct {v0}, Lyads/e04;-><init>()V

    sget-object v1, Lyads/oe3;->c:Lyads/le3;

    sget-object v1, Lyads/k55;->f:Lyads/k55;

    sget-object v1, Lyads/m04;->d:Lyads/m04;

    new-instance v1, Lyads/g04;

    invoke-direct {v1, v0}, Lyads/g04;-><init>(Lyads/e04;)V

    new-instance v2, Lyads/j04;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const v9, -0x800001

    const v10, -0x800001

    invoke-direct/range {v2 .. v10}, Lyads/j04;-><init>(JJJFF)V

    sget-object v0, Lyads/t04;->H:Lyads/t04;

    new-instance v0, Ln7;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ln7;-><init>(I)V

    sput-object v0, Lyads/p04;->h:Lyads/jv;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyads/g04;Lyads/k04;Lyads/j04;Lyads/t04;Lyads/m04;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/p04;->b:Ljava/lang/String;

    iput-object p3, p0, Lyads/p04;->c:Lyads/k04;

    iput-object p4, p0, Lyads/p04;->d:Lyads/j04;

    iput-object p5, p0, Lyads/p04;->e:Lyads/t04;

    iput-object p2, p0, Lyads/p04;->f:Lyads/g04;

    iput-object p6, p0, Lyads/p04;->g:Lyads/m04;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lyads/p04;
    .locals 10

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lyads/j04;->g:Lyads/j04;

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    sget-object v2, Lyads/j04;->h:Lyads/jv;

    invoke-interface {v2, v0}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object v0

    check-cast v0, Lyads/j04;

    goto :goto_0

    :goto_1
    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lyads/t04;->H:Lyads/t04;

    :goto_2
    move-object v8, v0

    goto :goto_3

    :cond_1
    sget-object v2, Lyads/t04;->I:Lyads/jv;

    invoke-interface {v2, v0}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object v0

    check-cast v0, Lyads/t04;

    goto :goto_2

    :goto_3
    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lyads/g04;->h:Lyads/g04;

    :goto_4
    move-object v5, v0

    goto :goto_5

    :cond_2
    sget-object v2, Lyads/f04;->g:Lyads/jv;

    invoke-interface {v2, v0}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object v0

    check-cast v0, Lyads/g04;

    goto :goto_4

    :goto_5
    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_3

    sget-object p0, Lyads/m04;->d:Lyads/m04;

    :goto_6
    move-object v9, p0

    goto :goto_7

    :cond_3
    sget-object v0, Lyads/m04;->e:Lyads/jv;

    invoke-interface {v0, p0}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object p0

    check-cast p0, Lyads/m04;

    goto :goto_6

    :goto_7
    new-instance v3, Lyads/p04;

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v9}, Lyads/p04;-><init>(Ljava/lang/String;Lyads/g04;Lyads/k04;Lyads/j04;Lyads/t04;Lyads/m04;)V

    return-object v3
.end method

.method public static a(Ljava/lang/String;)Lyads/p04;
    .locals 24

    .line 119
    new-instance v0, Lyads/e04;

    invoke-direct {v0}, Lyads/e04;-><init>()V

    .line 120
    sget-object v1, Lyads/oe3;->c:Lyads/le3;

    .line 121
    sget-object v1, Lyads/k55;->f:Lyads/k55;

    .line 122
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 123
    sget-object v7, Lyads/k55;->f:Lyads/k55;

    .line 124
    sget-object v14, Lyads/m04;->d:Lyads/m04;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v3, v1

    goto :goto_0

    .line 125
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 126
    new-instance v2, Lyads/k04;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 127
    invoke-direct/range {v2 .. v7}, Lyads/k04;-><init>(Landroid/net/Uri;Lyads/i04;Ljava/util/List;Ljava/lang/String;Lyads/oe3;)V

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object v11, v1

    .line 128
    :goto_1
    new-instance v8, Lyads/p04;

    .line 129
    new-instance v10, Lyads/g04;

    invoke-direct {v10, v0}, Lyads/g04;-><init>(Lyads/e04;)V

    .line 130
    new-instance v15, Lyads/j04;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const v22, -0x800001

    const v23, -0x800001

    .line 131
    invoke-direct/range {v15 .. v23}, Lyads/j04;-><init>(JJJFF)V

    .line 132
    sget-object v13, Lyads/t04;->H:Lyads/t04;

    const-string v9, ""

    move-object v12, v15

    invoke-direct/range {v8 .. v14}, Lyads/p04;-><init>(Ljava/lang/String;Lyads/g04;Lyads/k04;Lyads/j04;Lyads/t04;Lyads/m04;)V

    return-object v8
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/p04;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/p04;

    iget-object v1, p0, Lyads/p04;->b:Ljava/lang/String;

    iget-object v3, p1, Lyads/p04;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lyads/p04;->f:Lyads/g04;

    iget-object v3, p1, Lyads/p04;->f:Lyads/g04;

    invoke-virtual {v1, v3}, Lyads/f04;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lyads/p04;->c:Lyads/k04;

    iget-object v3, p1, Lyads/p04;->c:Lyads/k04;

    invoke-static {v1, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lyads/p04;->d:Lyads/j04;

    iget-object v3, p1, Lyads/p04;->d:Lyads/j04;

    invoke-static {v1, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lyads/p04;->e:Lyads/t04;

    iget-object v3, p1, Lyads/p04;->e:Lyads/t04;

    invoke-static {v1, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lyads/p04;->g:Lyads/m04;

    iget-object p1, p1, Lyads/p04;->g:Lyads/m04;

    invoke-static {p0, p1}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lyads/p04;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/p04;->c:Lyads/k04;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lyads/k04;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/p04;->d:Lyads/j04;

    invoke-virtual {v1}, Lyads/j04;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lyads/p04;->f:Lyads/g04;

    invoke-virtual {v0}, Lyads/f04;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/p04;->e:Lyads/t04;

    invoke-virtual {v1}, Lyads/t04;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lyads/p04;->g:Lyads/m04;

    invoke-virtual {p0}, Lyads/m04;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
