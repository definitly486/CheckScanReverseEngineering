.class public final Lyads/sy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yy0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(ILjava/lang/Object;Ljava/util/List;)Lj59;
    .locals 0

    .line 133
    invoke-interface {p2, p0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(ILjava/util/List;)Lj59;
    .locals 0

    .line 119
    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Ljava/lang/Integer;Ljava/lang/Object;Ljava/util/List;)Lj59;
    .locals 0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Ljava/lang/Object;Ljava/util/List;)Lj59;
    .locals 0

    .line 105
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(ILyads/vq0;Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 4

    .line 125
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    .line 126
    new-instance p1, Lx2;

    invoke-direct {p1, p0, p3}, Lx2;-><init>(ILjava/lang/Object;)V

    invoke-static {p4, p1}, Lyads/ty0;->a(Lorg/json/JSONArray;Lnl3;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    .line 127
    :cond_0
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    .line 128
    const-string v1, ") for mutation "

    const-string v2, " ("

    .line 129
    const-string v3, "Index out of bound ("

    invoke-static {p0, v3, v1, p2, v2}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 130
    const-string p2, ")"

    .line 131
    invoke-static {p0, p2, v0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 132
    invoke-direct {p3, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object p4
.end method

.method public static final a(ILyads/vq0;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 5

    .line 111
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    .line 112
    new-instance p1, Lq8a;

    invoke-direct {p1, p0}, Lq8a;-><init>(I)V

    invoke-static {p3, p1}, Lyads/ty0;->a(Lorg/json/JSONArray;Lnl3;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 114
    const-string v2, ") for mutation "

    const-string v3, " ("

    .line 115
    const-string v4, "Index out of bound ("

    invoke-static {p0, v4, v2, p2, v3}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 116
    const-string p2, ")"

    .line 117
    invoke-static {p0, p2, v0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object p3
.end method

.method public static final a(Ljava/lang/Integer;Lyads/vq0;Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 3

    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    new-instance p0, Lmk;

    const/4 p1, 0x4

    invoke-direct {p0, p3, p1}, Lmk;-><init>(Ljava/lang/Object;I)V

    invoke-static {p4, p0}, Lyads/ty0;->a(Lorg/json/JSONArray;Lnl3;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkx6;->n(II)Ly74;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ly74;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lw44;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0, p3}, Lw44;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p4, p1}, Lyads/ty0;->a(Lorg/json/JSONArray;Lnl3;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index out of bound ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") for mutation "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-static {v1, p0, v0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object p4
.end method

.method public static a(Lyads/js0;Lyads/vq0;Lyads/fs2;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lyads/js0;->c:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lyads/js0;->a:Lyads/as2;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 90
    :goto_0
    iget-object p0, p0, Lyads/js0;->b:Lyads/oe2;

    invoke-static {p0, p2}, Lyads/o01;->c(Lyads/oe2;Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    .line 91
    new-instance v2, Lq5a;

    invoke-direct {v2, v1, p1, v0, p0}, Lq5a;-><init>(Ljava/lang/Integer;Lyads/vq0;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    invoke-static {p1, v0, p2, v2}, Lyads/ty0;->a(Lyads/vq0;Ljava/lang/String;Lyads/fs2;Lnl3;)V

    return-void
.end method

.method public static a(Lyads/os0;Lyads/vq0;Lyads/fs2;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lyads/os0;->b:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    iget-object p0, p0, Lyads/os0;->a:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-int p0, v1

    .line 109
    new-instance v1, Lo8a;

    invoke-direct {v1, p0, p1, v0}, Lo8a;-><init>(ILyads/vq0;Ljava/lang/String;)V

    .line 110
    invoke-static {p1, v0, p2, v1}, Lyads/ty0;->a(Lyads/vq0;Ljava/lang/String;Lyads/fs2;Lnl3;)V

    return-void
.end method

.method public static a(Lyads/ts0;Lyads/vq0;Lyads/fs2;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lyads/ts0;->c:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lyads/ts0;->a:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    .line 122
    iget-object p0, p0, Lyads/ts0;->b:Lyads/oe2;

    invoke-static {p0, p2}, Lyads/o01;->c(Lyads/oe2;Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    .line 123
    new-instance v2, Lp8a;

    invoke-direct {v2, v1, p1, v0, p0}, Lp8a;-><init>(ILyads/vq0;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    invoke-static {p1, v0, p2, v2}, Lyads/ty0;->a(Lyads/vq0;Ljava/lang/String;Lyads/fs2;Lnl3;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/ry0;Lyads/vq0;Lyads/fs2;)Z
    .locals 0

    .line 93
    instance-of p0, p2, Lyads/yx0;

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    .line 94
    check-cast p2, Lyads/yx0;

    .line 95
    iget-object p0, p2, Lyads/yx0;->a:Lyads/js0;

    .line 96
    invoke-static {p0, p3, p4}, Lyads/sy0;->a(Lyads/js0;Lyads/vq0;Lyads/fs2;)V

    return p1

    .line 97
    :cond_0
    instance-of p0, p2, Lyads/zx0;

    if-eqz p0, :cond_1

    .line 98
    check-cast p2, Lyads/zx0;

    .line 99
    iget-object p0, p2, Lyads/zx0;->a:Lyads/os0;

    .line 100
    invoke-static {p0, p3, p4}, Lyads/sy0;->a(Lyads/os0;Lyads/vq0;Lyads/fs2;)V

    return p1

    .line 101
    :cond_1
    instance-of p0, p2, Lyads/ay0;

    if-eqz p0, :cond_2

    .line 102
    check-cast p2, Lyads/ay0;

    .line 103
    iget-object p0, p2, Lyads/ay0;->a:Lyads/ts0;

    .line 104
    invoke-static {p0, p3, p4}, Lyads/sy0;->a(Lyads/ts0;Lyads/vq0;Lyads/fs2;)V

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
