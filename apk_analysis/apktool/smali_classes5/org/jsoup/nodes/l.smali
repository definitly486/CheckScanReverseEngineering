.class public final Lorg/jsoup/nodes/l;
.super Lorg/jsoup/nodes/h;
.source "SourceFile"


# instance fields
.field public final k:Ldw2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lja8;->a:[Ljava/lang/String;

    sget-object v0, Lxs7;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, ", "

    invoke-static {v1, v0}, Lja8;->i(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lov6;->Q(Ljava/lang/String;)Ly03;

    return-void
.end method

.method public constructor <init>(Ljj8;Lorg/jsoup/nodes/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/jsoup/nodes/h;-><init>(Ljj8;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    new-instance p1, Ldw2;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/l;->k:Ldw2;

    return-void
.end method


# virtual methods
.method public final C(Lorg/jsoup/nodes/n;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/n;->C(Lorg/jsoup/nodes/n;)V

    iget-object p0, p0, Lorg/jsoup/nodes/l;->k:Ldw2;

    invoke-virtual {p0, p1}, Ldo5;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final G()Lorg/jsoup/nodes/h;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/h;->G()Lorg/jsoup/nodes/h;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/l;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/h;->G()Lorg/jsoup/nodes/h;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/l;

    return-object p0
.end method

.method public final k()Lorg/jsoup/nodes/n;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/h;->G()Lorg/jsoup/nodes/h;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/l;

    return-object p0
.end method
