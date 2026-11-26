.class public final Lwu6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwu6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lb36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb36<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb36;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lb36<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwu6$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lwu6$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lwu6$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lwu6$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lwu6$a;->e:Ljava/lang/String;

    iput-object p6, p0, Lwu6$a;->f:Ljava/lang/String;

    iput-object p7, p0, Lwu6$a;->g:Lb36;

    return-void
.end method


# virtual methods
.method public final a()Lhv6;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lwu6$a;->g:Lb36;

    iget-object v2, v1, Lb36;->b:Ljava/lang/Object;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lwu6$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-ge v5, v6, :cond_0

    const-string v5, "00"

    goto :goto_0

    :cond_0
    const-string v5, ""

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "&s="

    const-string v5, "&fn="

    const-string v6, "t="

    iget-object v11, v0, Lwu6$a;->b:Ljava/lang/String;

    invoke-static {v6, v4, v3, v11, v5}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&i="

    const-string v5, "&fp="

    iget-object v9, v0, Lwu6$a;->c:Ljava/lang/String;

    iget-object v8, v0, Lwu6$a;->d:Ljava/lang/String;

    invoke-static {v3, v9, v4, v8, v5}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "&n="

    iget-object v10, v0, Lwu6$a;->e:Ljava/lang/String;

    iget-object v13, v0, Lwu6$a;->f:Ljava/lang/String;

    invoke-static {v3, v10, v4, v13}, Lkh;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v0, v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    move-object v15, v0

    goto :goto_2

    :cond_1
    new-instance v0, Lgv6;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object v1, v1, Lb36;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lgv6;-><init>(JLjava/lang/String;)V

    goto :goto_1

    :goto_2
    new-instance v6, Lhv6;

    const/16 v16, 0x80

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v6 .. v17}, Lhv6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILgv6;ILjh2;)V

    return-object v6
.end method

.method public final b()Ljava/util/Date;
    .locals 2

    sget-object v0, Lwu6;->a:Lwu6;

    iget-object p0, p0, Lwu6$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lwu6;->b:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lwu6;->a:Lwu6;

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lwu6;->c:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    new-instance v0, Lk57$a;

    invoke-direct {v0, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_1
    nop

    instance-of v0, p0, Lk57$a;

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    :goto_2
    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lwu6$a;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lwu6$a;

    iget-object v0, p0, Lwu6$a;->a:Ljava/lang/String;

    iget-object v1, p1, Lwu6$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lwu6$a;->b:Ljava/lang/String;

    iget-object v1, p1, Lwu6$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lwu6$a;->c:Ljava/lang/String;

    iget-object v1, p1, Lwu6$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lwu6$a;->d:Ljava/lang/String;

    iget-object v1, p1, Lwu6$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lwu6$a;->e:Ljava/lang/String;

    iget-object v1, p1, Lwu6$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lwu6$a;->f:Ljava/lang/String;

    iget-object v1, p1, Lwu6$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lwu6$a;->g:Lb36;

    iget-object p1, p1, Lwu6$a;->g:Lb36;

    invoke-virtual {p0, p1}, Lb36;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lwu6$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwu6$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lwu6$a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lwu6$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lwu6$a;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lwu6$a;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lwu6$a;->g:Lb36;

    invoke-virtual {p0}, Lb36;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", s="

    const-string v1, ", fn="

    const-string v2, "ChequesQr(t="

    iget-object v3, p0, Lwu6$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lwu6$a;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", i="

    const-string v2, ", fp="

    iget-object v3, p0, Lwu6$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lwu6$a;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", n="

    const-string v2, ", from="

    iget-object v3, p0, Lwu6$a;->e:Ljava/lang/String;

    iget-object v4, p0, Lwu6$a;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lwu6$a;->g:Lb36;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
