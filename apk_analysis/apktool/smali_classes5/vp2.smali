.class public final Lvp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhm1;
.implements Lcom/google/android/gms/tasks/Continuation;


# static fields
.field public static final b:Lvp2;

.field public static final c:Lbh8;

.field public static final d:Lbh8;

.field public static final e:Lbh8;

.field public static final f:Lbh8;

.field public static final g:Lbh8;

.field public static final h:Lex2;

.field public static final i:Lex2;

.field public static final synthetic j:Lvp2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lvp2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvp2;->b:Lvp2;

    new-instance v0, Lbh8;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lvp2;->c:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lvp2;->d:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lvp2;->e:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lvp2;->f:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lvp2;->g:Lbh8;

    new-instance v0, Lex2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lex2;-><init>(Z)V

    sput-object v0, Lvp2;->h:Lex2;

    new-instance v0, Lex2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lex2;-><init>(Z)V

    sput-object v0, Lvp2;->i:Lex2;

    new-instance v0, Lvp2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvp2;->j:Lvp2;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x2c

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lqa8;->n(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final c(Ljava/lang/String;)F
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x2c

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static final d(J)D
    .locals 4

    const/16 v0, 0xb

    ushr-long v0, p0, v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x40a0000000000000L    # 2048.0

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x7ff

    and-long/2addr p0, v2

    long-to-double p0, p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static final e(IJ)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p0}, Lga1;->b(I)V

    invoke-static {p1, p2, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p1, v0

    int-to-long v3, p0

    div-long/2addr v1, v3

    shl-long v0, v1, v0

    mul-long v5, v0, v3

    sub-long/2addr p1, v5

    cmp-long v2, p1, v3

    if-ltz v2, :cond_1

    sub-long/2addr p1, v3

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_1
    invoke-static {p0}, Lga1;->b(I)V

    invoke-static {v0, v1, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lga1;->b(I)V

    invoke-static {p1, p2, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Le44;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Le44;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, v0, Le44;->a:La44;

    :cond_1
    return-object p0
.end method


# virtual methods
.method public getTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
