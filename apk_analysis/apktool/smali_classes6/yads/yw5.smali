.class public final Lyads/yw5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/yw5;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lyads/q86;
    .locals 6

    sget-object v0, Lyads/ww5;->d:Lyads/ww5;

    iget-object v1, p0, Lyads/yw5;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "start"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lyads/q86;

    sget-object p1, Lyads/p86;->b:Lyads/p86;

    invoke-direct {p0, p1, v1}, Lyads/q86;-><init>(Lyads/p86;F)V

    return-object p0

    :cond_0
    sget-object v0, Lyads/ww5;->e:Lyads/ww5;

    iget-object v2, p0, Lyads/yw5;->a:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v0, :cond_1

    const-string v0, "end"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lyads/q86;

    sget-object p1, Lyads/p86;->c:Lyads/p86;

    invoke-direct {p0, p1, v2}, Lyads/q86;-><init>(Lyads/p86;F)V

    return-object p0

    :cond_1
    sget-object v0, Lyads/ww5;->c:Lyads/ww5;

    iget-object v3, p0, Lyads/yw5;->a:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    const-string v0, "%"

    invoke-static {p1, v0, v4}, Lra8;->u(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-virtual {p1, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lqa8;->n(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v0, v1, p1

    if-gtz v0, :cond_2

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_2

    goto :goto_0

    :catchall_0
    :cond_2
    move-object p0, v5

    :goto_0
    if-eqz p0, :cond_6

    new-instance v5, Lyads/q86;

    sget-object p1, Lyads/p86;->c:Lyads/p86;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-direct {v5, p1, p0}, Lyads/q86;-><init>(Lyads/p86;F)V

    goto :goto_3

    :cond_3
    sget-object v0, Lyads/ww5;->f:Lyads/ww5;

    iget-object v1, p0, Lyads/yw5;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "#"

    invoke-static {p1, v0, v4}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt p0, v3, :cond_4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_4
    move-object p0, v5

    :goto_1
    if-eqz p0, :cond_6

    new-instance v5, Lyads/q86;

    sget-object p1, Lyads/p86;->d:Lyads/p86;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v5, p1, p0}, Lyads/q86;-><init>(Lyads/p86;F)V

    goto :goto_3

    :cond_5
    sget-object v0, Lyads/ww5;->b:Lyads/ww5;

    iget-object p0, p0, Lyads/yw5;->a:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :try_start_2
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "hh:mm:ss"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v0, "00:00:00"

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-object p0, v5

    :goto_2
    if-eqz p0, :cond_6

    new-instance v5, Lyads/q86;

    sget-object p1, Lyads/p86;->b:Lyads/p86;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p0, v0

    invoke-direct {v5, p1, p0}, Lyads/q86;-><init>(Lyads/p86;F)V

    :cond_6
    :goto_3
    return-object v5
.end method
