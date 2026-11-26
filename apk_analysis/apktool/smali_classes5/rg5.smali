.class public Lrg5;
.super Lqg5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 20
    sget-object v1, Lqy0;->NO_RECEIVER:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lqg5;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p5}, Lqg5;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lpe4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lqy0;->NO_RECEIVER:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lxk1;

    invoke-interface {v0}, Lxk1;->c()Ljava/lang/Class;

    move-result-object v2

    instance-of p1, p1, Lne4;

    xor-int/lit8 v5, p1, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lqg5;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lqg5;->getGetter()Laf4$a;

    const/4 p0, 0x0

    throw p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lqg5;->getSetter()Lwe4$a;

    const/4 p0, 0x0

    throw p0
.end method
